.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and ax, cx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
imul esi, edi, -24
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
add edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
cmovnle edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and al, -12
mov bx, 27738
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
xchg edi, edi
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
or al, dl
add cl, -8 # instrumentation
xchg bl, cl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
add al, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
cmovno edx, esi
imul rdx, rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
bt di, si
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
sbb dl, 75
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
sbb ax, -30070
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
cmovl rcx, rdi
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edi
imul dx, di, 53
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
or bl, 111
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
