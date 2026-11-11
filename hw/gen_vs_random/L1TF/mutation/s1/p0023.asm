.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -110 # instrumentation
btr cx, 181
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
setz bl
btr si, dx
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
or al, cl
cmovb rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmp al, dl
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
or edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
or eax, -401020526
dec cx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
setz dl
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
xor ax, 32760
mul al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
lea ecx, qword ptr [rcx + rsi + 65505]
test bl, 84
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
