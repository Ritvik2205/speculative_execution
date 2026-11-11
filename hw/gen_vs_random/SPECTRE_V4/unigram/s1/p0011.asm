.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 62
imul bx
and rbx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
or sil, al
and sil, dl
mul cl
imul rdi
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
or ax, -12775
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test edx, 573099753
imul edx, ecx, 36
adc cl, 95
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
mul rbx
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
bt ebx, 228
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
sbb cl, dl
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
or dil, sil
xor dl, 63
add edx, 50
cmp rdx, 37
bts eax, 209
and di, 73
test eax, ebx
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
btc rsi, rdx
imul dx, bx, 26
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 51
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
cmovp eax, eax
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 11
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
