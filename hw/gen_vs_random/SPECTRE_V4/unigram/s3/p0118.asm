.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and dil, -61
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
mov sil, dl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
adc si, -74
or eax, edi
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and esi, 126
cmovz dx, cx
cmp bl, 12
cmovno edi, eax
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], cx
adc dl, 89
or rax, rdx
cmovle rdi, rax
xor rsi, -3
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rcx]
add sil, 3
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovl rsi, rax
inc cl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rdi
cmovbe rdi, rbx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
imul rcx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 68
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
xchg dil, sil
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
cmovnle cx, di
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
or cl, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sub bl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 6
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
