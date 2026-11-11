.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
xor cx, -18
and al, 106
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or al, 54
and al, 82
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and dl, al
xor dil, 81
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and sil, -56
jmp .bb_0.1
.bb_0.1:
or al, 24
test al, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
