.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rcx + rsi + 65505]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
setz dl
dec cx
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
cmp al, dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
test bl, 12
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
or edi, eax
mul al
or eax, 287965578
xor ax, -16232
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
sub sil, -99
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
