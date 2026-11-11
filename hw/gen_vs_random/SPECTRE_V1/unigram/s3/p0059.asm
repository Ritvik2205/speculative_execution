.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and al, 33
setns dil
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
bswap rax
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
or si, 92
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
