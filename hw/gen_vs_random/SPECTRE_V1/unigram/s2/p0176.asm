.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
cmovl ebx, esi
add bl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add rbx, 72
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
lea cx, qword ptr [rdx + rcx]
add cl, -127
add al, -89 # instrumentation
sbb eax, esi
test dl, 113
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
