.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
not sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test sil, bl
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or cl, -78
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
lea rsi, qword ptr [rcx + rbx + 40]
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
