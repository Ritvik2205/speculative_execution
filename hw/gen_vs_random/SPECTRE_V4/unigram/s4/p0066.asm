.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rax, rbx
or rbx, rcx
cmovle rbx, rdi
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and edx, 18
movzx rdx, bx
xor ecx, edx
cmovo dx, ax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
movzx ecx, cx
btr rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
inc bl
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
add sil, 26
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
add rax, rbx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
and eax, -24
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
xor bl, al
sbb dl, sil
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 71
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
movzx esi, dl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
btc dx, 16
test rdx, 40
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 13
add cl, 122 # instrumentation
cmovz rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], di
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 42
cmp rbx, 90
movzx rbx, si
xor bl, 93
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovo rsi, rcx
add dl, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rsi]
cmovnp rax, rcx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
