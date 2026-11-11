.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
add edi, 11
test eax, -558243208
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
sub al, 50
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
cmovb si, cx
dec si
or dil, 84
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 68
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
lea ebx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and dl, 84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
adc dx, 79
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 78
movzx ecx, sil
and al, bl
add bl, -18 # instrumentation
mov rcx, rdx
cmovnp ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
xchg esi, ecx
add si, 4
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
neg bl
add bl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
xor sil, bl
cmovnle rbx, rbx
add al, cl
jmp .bb_0.2
.bb_0.2:
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
xor di, -43
mov bx, -31043
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rcx, rsi
xor bx, dx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
sub dil, -10
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
