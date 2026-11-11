.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rsi, 31
movsx ecx, bx
cmp ecx, 54
xor ax, 25554
movzx edx, al
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
or edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
sbb cl, -104
sub ecx, edx
imul eax
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 17
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 23
cmp si, 26
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
cmp bl, sil
cmovle cx, ax
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
btr bx, si
add ebx, 3
and dl, cl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
add dl, -99 # instrumentation
not edx
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
xor ax, 28088
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 62
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 79
mul ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 46
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 91
cmovns edx, eax
adc edi, 62
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and cl, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
test dx, 69
sub sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
