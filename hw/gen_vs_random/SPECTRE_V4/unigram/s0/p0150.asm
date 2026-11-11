.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
mov rdx, rax
movzx ebx, cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor al, bl
and bl, 26
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
cmp rcx, 59
sbb al, dl
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
test rdx, 50
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 67
xor cl, -101
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
not dx
or cl, 94
cmp eax, -92285311
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
cmovz edi, edi
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 6
imul cl
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
adc al, cl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
neg rdx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
sub dl, 43
cmovb rdx, rbx
or cx, bx
cmovle di, di
test bx, -1599
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
xor bl, 93
sub rsi, rax
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
movzx esi, cl
and dl, bl
sub dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
