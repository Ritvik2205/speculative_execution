.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dil
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
btr rbx, rbx
cmovnle eax, ecx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
add dl, -91 # instrumentation
cmovl rdi, rdi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
bts dx, cx
adc dx, 73
or bl, sil
xor rdx, 106
or dx, ax
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
dec al
add sil, -18
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
bswap eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
add al, -86 # instrumentation
cmovnp esi, edx
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
add dil, -84
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
btc rsi, 77
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
cmovp esi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 83
neg rax
xchg al, al
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
bt esi, 96
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
cmovnz rcx, rdx
adc cl, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
cmovnp rdx, rdi
or eax, -612395655
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
adc rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
