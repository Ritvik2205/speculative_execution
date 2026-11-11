.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
test cl, -62
lea rdx, qword ptr [rdx + rdi]
mov rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test rax, 1469613902
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 3
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
add dl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
add bl, -76 # instrumentation
cmovnle ax, cx
lea edx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
lea eax, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 69
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
