.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
cmovz rcx, rax
add dil, dil
and bx, dx
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 19
jmp .bb_0.1
.bb_0.1:
setnl cl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
cmovno rsi, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rsi]
xchg ax, ax
add bl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
xor cl, cl
lea rdi, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
