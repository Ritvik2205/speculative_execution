.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
sub rbx, 83
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
adc di, di
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
cmp al, al
cmovp rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
cmovb esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
bt edi, 23
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 41
adc si, si
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
xchg si, bx
inc dil
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
adc rsi, rcx
cmp bx, ax
add al, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
add dl, -99 # instrumentation
not ecx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
xchg ax, di
and sil, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xor dx, 12
cmovnp bx, bx
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
add edx, 99
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
cmovs cx, si
or ax, di
cmovo rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
mov dil, -118
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
movzx di, sil
add bl, -71 # instrumentation
adc bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
