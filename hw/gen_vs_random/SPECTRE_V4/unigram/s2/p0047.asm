.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, 17267
cmovnb esi, edx
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
test rcx, 73
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], dx
bswap eax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
sub rax, -1066968986
neg dil
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and cl, al
sub ebx, 3
add ecx, 99
adc ecx, 114
cmp al, 109
cmovnb cx, cx
test bl, al
cmovnle ax, dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
sub bx, ax
btr cx, 252
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
sbb bl, -75
test cl, 78
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
cmp esi, -84
add rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
sub bl, 66
sbb rdi, 81
imul dx
mov sil, sil
cmovo edx, ecx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
bt esi, 92
imul bl
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmovl edx, ecx
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rbx
sub cl, cl
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
or rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
