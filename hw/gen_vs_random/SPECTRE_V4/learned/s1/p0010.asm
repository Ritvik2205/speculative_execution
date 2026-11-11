.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
adc ebx, 117
add dl, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 73
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
adc bl, cl
add sil, 26
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 82
lea di, qword ptr [rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 61
add cl, -82 # instrumentation
sbb si, dx
adc al, -58
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
neg cx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dil, dil
sub rsi, 26
test cl, al
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
add al, 118
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
sbb bl, -94
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], esi
cmp ax, -906
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
add al, -75 # instrumentation
adc al, 79
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
mov al, al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and dl, al
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
cmovle rdi, rdx
cmp cl, cl
or cl, sil
xor ax, si
mul rbx
and al, -127
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
sbb rax, 183833426
or rsi, 43
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
