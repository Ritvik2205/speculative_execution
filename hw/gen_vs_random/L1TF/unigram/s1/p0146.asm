.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
cmp ecx, 28
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
add dl, 27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
lea rdx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
lea dx, qword ptr [rsi + rcx + 45165]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
