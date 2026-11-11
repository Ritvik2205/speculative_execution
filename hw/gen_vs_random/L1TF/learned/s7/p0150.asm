.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 51
test sil, 29
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 41
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 91
sub dl, -49
lea eax, qword ptr [rdx + rdx + 31]
jmp .bb_0.1
.bb_0.1:
test bl, 12
cmp al, 56
or bl, -5
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
test dil, -126
lea rdi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
