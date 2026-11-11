.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz dl
test bl, 45
mul al
xor ax, 0
sub sil, -99
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
or eax, -401020526
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
lea ecx, qword ptr [rcx + rsi + 65505]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
or edi, eax
dec cx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
