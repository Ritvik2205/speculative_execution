.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
or edi, eax
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
setz dl
mul al
or eax, -62
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
dec cx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
test bl, 84
xor ax, -24879
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
lea ecx, qword ptr [rcx + rsi + 60489]
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
