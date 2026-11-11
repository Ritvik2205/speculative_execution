.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
imul esi, edi, -24
xchg edi, edi
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
imul dx, di, 53
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
add edi, eax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
cmovl rcx, rdi
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
sbb ax, -30070
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
xchg ebx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
cmovno edx, esi
and ax, cx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add cl, -8 # instrumentation
xchg bl, cl
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
or bl, -99
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
add al, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
or al, dl
and al, 49
mov bx, 27738
bt di, si
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
cmovnle edi, ebx
sbb dl, -71
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
imul rdx, rdx
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
