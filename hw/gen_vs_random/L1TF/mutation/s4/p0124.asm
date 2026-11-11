.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz dl
or eax, 1495028166
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
sub sil, -99
xor ax, 34
or edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
mul al
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
lea ecx, qword ptr [rcx + rsi + 65505]
test bl, 84
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
dec cx
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
