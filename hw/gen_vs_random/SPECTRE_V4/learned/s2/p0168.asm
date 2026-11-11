.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 68
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 96
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
cmovl rcx, rax
inc bl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 65
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
bts rbx, 16
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, bl
cmovnz di, di
movsx eax, bx
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and dl, al
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
imul bx
btc rbx, rcx
add bl, -18 # instrumentation
mov rcx, rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and bx, 95
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
or al, 95
imul dx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
xor sil, cl
adc al, sil
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
xchg bl, dl
sub dl, 43
imul esi, edx
mov dil, -118
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, di
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
inc esi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and eax, -37
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
