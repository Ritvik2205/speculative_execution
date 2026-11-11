.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rax]
cmp bx, 79
sub dl, 94
and al, -99
imul rdx, rdx, 37
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
test eax, -1812342404
or sil, dil
lea ecx, qword ptr [rdi]
xchg ax, si
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
cmp rsi, rsi
xor cl, dl
mov ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
