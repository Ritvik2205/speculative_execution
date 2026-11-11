.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 75
test cl, al
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
sbb bl, 57
sub al, 99
add dl, -99 # instrumentation
not eax
cmp dl, 52
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
adc cl, cl
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 75
inc ax
sbb al, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
adc bl, al
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
cmovnl rax, rax
btc rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
sbb dl, -99
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
sub cl, 116
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 87
cmovnb rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 18
cmp dx, cx
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
and dl, bl
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 53
add al, dl
dec al
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
btc rbx, 72
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 80
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
movzx esi, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
