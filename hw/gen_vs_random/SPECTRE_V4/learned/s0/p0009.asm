.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, -58
not ecx
xor cl, bl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
xchg rcx, rdi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
sbb cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
xchg eax, edx
imul ax, dx, 69
sub esi, 49
add cl, 12
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
cmovnb esi, eax
and rcx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rcx]
cmp al, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
mov cl, cl
test eax, ecx
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
