.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
or dl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
add ax, 23362
and dl, al
bt rax, 28
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
sbb eax, -108
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
