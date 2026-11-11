.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 61
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and ax, 37
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
lea ax, qword ptr [rdx + rdi + 12]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test rax, -1576813424
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
