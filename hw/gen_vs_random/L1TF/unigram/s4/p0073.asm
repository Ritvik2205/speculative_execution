.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, bl
bts eax, esi
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 28
test sil, 29
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
bt rbx, 41
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test rax, rbx
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
cmovo eax, ecx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
imul rcx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 43
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
