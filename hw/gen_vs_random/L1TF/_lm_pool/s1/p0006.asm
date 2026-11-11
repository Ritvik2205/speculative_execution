.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
sbb sil, cl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 77
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
xor dil, al
btr eax, ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
lea rsi, qword ptr [rax]
test bx, 85
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
cmovnp rsi, rbx
jmp .bb_0.3
.bb_0.3:
test eax, 645518295
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
