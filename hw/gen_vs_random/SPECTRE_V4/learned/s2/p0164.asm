.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, 1880179600
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmp rax, 2115020203
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 23
cmp al, -52
cmovnle eax, edi
adc sil, 47
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
or ax, -12775
bswap rdx
sbb bl, -94
and dl, cl
sub sil, -50
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
imul cl
cmovnbe rax, rdx
movzx ecx, dl
movzx cx, bl
imul rdi, rax, 26
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
lea bx, qword ptr [rdx + rdi + 17]
or si, dx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
sbb dl, bl
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and dl, dil
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
or rsi, 4
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
cmovle rbx, rsi
xor eax, -164167056
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
xchg si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
