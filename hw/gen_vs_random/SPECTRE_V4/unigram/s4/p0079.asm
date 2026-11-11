.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
cmovnp rdx, rax
xor ax, 25554
imul rcx, rax
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
add bx, 110
imul cl
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 29
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
bts edi, 167
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
not eax
add cl, -117 # instrumentation
cmovs rax, rbx
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
adc rax, rsi
bt ebx, 228
cmovle rdx, rcx
btc di, 26
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
cmovz eax, edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 59
movzx ebx, sil
and bl, sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
not cx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
test eax, -558243208
inc ebx
add eax, -1796699558
neg dl
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 55
and rsi, 72
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 94
sub bl, dl
add cl, 56 # instrumentation
cmovle rbx, rcx
movzx di, dil
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
