.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 87
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
or al, cl
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
imul cl
or dl, dl
test ecx, 78
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
cmovnl bx, cx
neg cx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, al
cmovnp si, bx
test bl, al
imul si, ax, 69
btc rsi, 140
cmovnbe rax, rdx
and dl, al
sbb eax, -984782068
sbb si, 2
sbb al, -101
test eax, 1880179600
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
mov rdx, rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
cmp bl, bl
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
cmp cl, cl
sbb eax, -984782068
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
