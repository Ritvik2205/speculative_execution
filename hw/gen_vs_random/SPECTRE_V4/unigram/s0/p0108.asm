.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, esi
cmovnbe edx, ecx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
add cl, -123 # instrumentation
sbb dl, 36
bt cx, dx
cmovnle cx, cx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
cmovbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
xchg ebx, edx
mov si, -8007
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
sbb dx, cx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
cmp ecx, 13
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 36
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
sbb bl, -79
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
mov ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
adc cl, -4
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
cmp eax, esi
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
cmovb rdx, rdx
add cl, -6 # instrumentation
cmovo rcx, rbx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
adc dl, sil
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
test cx, bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
cmovnz rdx, rax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 43
xor rcx, rax
movsx ax, al
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
cmovbe dx, di
cmovno bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
