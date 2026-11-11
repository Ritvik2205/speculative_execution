.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, dil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
not cx
mov edx, esi
bt eax, 84
test ecx, edi
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 6
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
mov dl, -34
sbb eax, -984782068
add bl, -26 # instrumentation
btr ebx, 70
test dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
or cl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
sbb dil, sil
sbb dl, sil
add rdx, 40
add edi, edx
cmp si, 30
cmovnp dx, si
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
movzx eax, cl
mov rbx, rdi
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
and dil, 96
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
adc rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
test sil, al
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
xchg rbx, rax
adc dil, 20
xor rcx, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
