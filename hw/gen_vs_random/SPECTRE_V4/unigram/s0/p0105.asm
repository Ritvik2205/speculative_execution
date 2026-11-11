.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 1880179600
sub sil, sil
test rbx, 46
cmp sil, dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and dil, 96
not ebx
neg ecx
mov cl, cl
cmovp ax, bx
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
cmovnle bx, si
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and bl, 26
cmp cl, cl
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 60
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
imul dx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
bt eax, esi
cmovnbe rsi, rsi
bswap edx
add edx, ebx
cmovs rax, rcx
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
imul sil
neg dl
add cl, -42 # instrumentation
adc dl, dil
movsx edx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
cmovle rax, rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and sil, dil
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 25
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
dec bl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
add bl, 110 # instrumentation
movsx ax, bl
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 72
adc dl, 67
and rcx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rcx]
cmovnb eax, ebx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
