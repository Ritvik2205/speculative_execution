.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dil
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 20
add bl, al
sbb bl, al
xor rdi, 63
test al, -71
xchg esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
