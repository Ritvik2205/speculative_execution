.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
adc dl, 56
cmovl rax, rdi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], edi
adc al, dl
cmovb cx, bx
and cl, 32
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 92
and sil, sil
btr cx, bx
imul edx
cmp bl, al
mov dl, cl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
add cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
not si
imul bl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
cmovle rcx, rdx
xchg dx, ax
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 19
add ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
sub sil, 71
add cl, dil
cmovl eax, edx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add dl, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
xor sil, sil
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 47
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
or bl, bl
dec dx
or eax, -646827727
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
