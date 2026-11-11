.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
or bl, sil
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 35
jmp .bb_0.1
.bb_0.1:
or al, 16
and dx, 60
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
test al, 91
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
not sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or cl, 7
and dl, bl
xor ax, 23633
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
