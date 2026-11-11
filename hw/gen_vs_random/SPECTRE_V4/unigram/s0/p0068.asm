.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, -127
sbb bl, -94
adc dl, 44
cmovz esi, eax
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
movzx edx, dx
movzx rdx, bx
sbb di, -76
test dil, dil
mov rax, rsi
bts ebx, 22
inc edi
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
add rdx, 64
neg dl
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, ecx
btr rdx, rbx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
btr rdi, rax
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
cmovnp rdx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
sub ecx, eax
and dx, 1
btc rbx, 49
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
cmovnle rdi, rdi
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
adc ax, 94
test sil, 29
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
cmovnbe dx, bx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
xor cl, dl
xor dil, dl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
add bx, bx
add bl, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
or ebx, edi
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
