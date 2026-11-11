.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
test dl, 113
sub ax, 124
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
lea bx, qword ptr [rcx + rdi + 72]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
test ax, -32457
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 66
test sil, -31
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
