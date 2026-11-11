.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
cmovle cx, cx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 62
add cl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
add al, -51 # instrumentation
cmovno rax, rdx
bts rcx, 46
and rcx, rdx
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
