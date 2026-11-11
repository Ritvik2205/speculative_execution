.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
adc dl, dil
jmp .bb_0.1
.bb_0.1:
test al, -84
xor dil, -42
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
