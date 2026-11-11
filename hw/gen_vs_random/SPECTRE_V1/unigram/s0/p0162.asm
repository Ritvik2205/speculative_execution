.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 22
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edi
add di, 44
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
cmovb si, dx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 2
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
not bx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and bl, 124
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 39
adc dx, -112
bt dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
