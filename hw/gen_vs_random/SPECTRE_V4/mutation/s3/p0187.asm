.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
add al, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
imul esi, edi, -24
imul rdx, rdx
add cl, -8 # instrumentation
xchg bl, cl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
cmovnle edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
cmovno edx, esi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
add edi, eax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
or bl, -80
and ax, cx
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
xchg ebx, eax
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
movsx ebx, dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
xchg ebx, esi
test cl, -52
test bx, 24072
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
cmovbe rax, rdi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
cmp rbx, rsi
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
adc cl, -85
add al, -3
xor rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
