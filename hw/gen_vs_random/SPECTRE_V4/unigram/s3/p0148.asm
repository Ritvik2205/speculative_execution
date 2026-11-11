.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
btc rsi, rax
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
sub bx, si
test dl, -102
test cl, al
movsx eax, bl
add cl, 62 # instrumentation
cmovnz ax, ax
add dil, dil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
movsx rsi, dx
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
btc rdx, rax
and eax, 1913354318
imul si, bx, 51
xor esi, edi
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
cmp cl, 100
or rdi, 43
bts cx, 158
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
mul ecx
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
movsx cx, sil
test sil, 68
and bx, 18
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
mov bl, al
and ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
bts edx, 116
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
cmovno rsi, rcx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and bx, 94
add rcx, rsi
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
or dl, bl
sub dl, 107
cmovbe ax, dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
test cl, -52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
