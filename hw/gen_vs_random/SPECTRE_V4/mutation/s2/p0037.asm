.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
test bx, ax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
sub dl, al
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
xor dx, dx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
cmovl edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
or edi, -78
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
cmp bx, 113
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
cmovnbe ecx, eax
cmovle ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
sbb dl, -62
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and al, -28
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
cmovl rcx, rdi
mov bx, 27738
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
bt di, si
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
imul dx, di, 53
xchg edi, edi
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
sbb ax, 10407
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
