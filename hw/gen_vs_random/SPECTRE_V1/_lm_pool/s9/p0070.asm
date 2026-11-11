.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
test sil, bl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 14
lea ax, qword ptr [rcx + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
xor sil, al
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 65
xor al, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
inc esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
