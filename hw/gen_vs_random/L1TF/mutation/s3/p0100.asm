.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
mul al
or eax, -62
dec cx
test bl, 84
sub sil, -99
setz dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
lea ecx, qword ptr [rcx + rsi + 60489]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
or edi, eax
cmp al, dl
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
