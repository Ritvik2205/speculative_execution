.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rbx, di
cmovs di, bx
sub dil, cl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and bx, 91
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], esi
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
neg esi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and edi, eax
add cl, 35 # instrumentation
cmovnb rax, rdx
test sil, cl
and bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
xor rdx, 106
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
test ecx, 860867711
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
test dl, -125
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
mov bl, dl
adc eax, 1019803307
and rax, 0b1111111111111 # instrumentation
or al, 52
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
test rdi, 1222000858
xchg bx, si
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 99
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
or eax, -1779536330
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
sub al, dil
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
sbb dl, 75
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
xor cl, 88
sub dil, dl
mul al
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
