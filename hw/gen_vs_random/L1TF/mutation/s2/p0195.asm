.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, dl
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
or edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
or eax, 287965578
dec cx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
xor ax, 30996
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
imul ax
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
xor dl, cl
cmovp ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
