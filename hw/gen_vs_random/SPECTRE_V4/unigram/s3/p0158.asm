.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov di, ax
cmp dx, -26
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
add cl, -9
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xchg sil, al
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
cmp sil, al
movzx rax, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
test sil, sil
adc sil, -112
adc bl, al
adc dl, bl
add ecx, 99
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
xor bl, 126
and rbx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
or cx, cx
xor ax, 15671
or bx, -33
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
or cx, si
adc dl, al
sub eax, ecx
or bl, sil
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
not esi
imul dl
add dl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
btc rdx, 130
sbb cx, di
sbb cx, 29
sub eax, ebx
bswap rdi
xor cl, dl
btc rsi, rdx
btc rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
