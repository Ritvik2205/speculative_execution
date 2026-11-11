.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ax, 31802
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 9
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
cmovle edx, edi
bts rax, rbx
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
or rax, 1042095162
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
btr di, 245
add cl, -75 # instrumentation
sbb edx, 36
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or sil, cl
not dx
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
adc si, bx
adc esi, 96
add sil, al
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
sbb dl, 75
or bl, dl
xor dil, 37
xor rsi, -3
adc bx, dx
cmp bl, -79
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
sub rcx, -99
sbb sil, -11
cmovp rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
sbb dl, dil
sub dil, al
btr rdi, rcx
bt rax, rax
dec al
and rdx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
mov rsi, rcx
add cl, -119 # instrumentation
sbb eax, -2001663753
and rbx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
