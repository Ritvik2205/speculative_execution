.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
test esi, eax
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
sbb cl, dil
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 74
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
not ebx
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
or dl, -92
sbb bl, -88
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
