.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
mov dl, dil
xor dl, 71
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sbb bl, sil
bt ecx, edx
mov sil, dl
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
