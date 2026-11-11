.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, sil
or al, -75
xor bl, -61
xor dl, al
and dl, bl
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
or cl, 6
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor sil, dl
not al
test rdi, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
