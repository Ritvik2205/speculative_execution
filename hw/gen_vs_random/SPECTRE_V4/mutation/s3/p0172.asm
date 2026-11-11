.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
imul rdx, rbx, -19
bts ecx, ebx
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
bswap rcx
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ebx
movzx edi, si
dec al
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
add edx, 89
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -34
add dl, 122 # instrumentation
cmovz dx, bx
bt rbx, rax
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
inc cl
bt si, 114
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
test cl, 78
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
adc cl, -4
add al, -6
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
