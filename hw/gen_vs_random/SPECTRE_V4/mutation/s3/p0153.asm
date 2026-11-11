.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 80
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, bl
cmovl rcx, rsi
btr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ebx, esi, 27
bts rdi, rbx
sbb cl, bl
imul di, si
add dl, -26 # instrumentation
btr edx, 30
cmovz edx, edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovnb dx, dx
bt cx, 111
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
btc ax, si
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmovnl rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
movsx rsi, bx
or dl, bl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
cmp cl, cl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
movzx edx, al
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
