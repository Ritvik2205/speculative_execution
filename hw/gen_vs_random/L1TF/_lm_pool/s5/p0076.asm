.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, bl
sbb dl, dil
not dil
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and cl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
test rdi, rcx
add cl, -20
add al, -102
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
