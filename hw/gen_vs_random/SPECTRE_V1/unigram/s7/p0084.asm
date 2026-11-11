.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dl
add al, -94 # instrumentation
cmovnle rcx, rsi
sub edx, -63
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
add cl, 112 # instrumentation
sbb edi, 26
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
add dl, -77 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
lea rdi, qword ptr [rcx + rbx + 19444]
add al, -42 # instrumentation
lea ax, qword ptr [rbx + rsi]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
imul rdx, rax, 55
setnle sil
btr rsi, 5
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
