.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 38
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
sbb rbx, rcx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 5
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
add cl, 65
inc edi
sbb al, 123
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
add dil, 72 # instrumentation
cmovle di, ax
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
add cl, 122 # instrumentation
cmovz rsi, rdi
add cl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
sub rax, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmovle ebx, edx
xor esi, 32
cmovb eax, ebx
test sil, cl
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
mul ax
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
xor sil, dl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 16
cmovnbe rdi, rdi
or ax, -15282
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
cmovnbe rdi, rdx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rax, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rax]
add dl, dl
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
not cx
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rax], esi
cmovz ecx, ebx
add rcx, 43
btc rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
