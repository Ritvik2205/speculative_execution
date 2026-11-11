.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, -94
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 1
cmovnle rbx, rbx
not ax
sbb dl, dl
add sil, sil
sub sil, -36
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmovs cx, ax
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 43
cmovo rdx, rdx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
movzx rax, cl
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
sub rax, -701741274
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
test dx, bx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdx
xor bx, ax
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 65
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
mov bl, bl
or ax, dx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
cmp dl, 94
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
xor dl, 22
test dx, 53
btc dx, si
mov dl, -34
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
add rax, rcx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 76
add rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 93
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
dec dl
xor dl, 71
movzx edi, dil
adc dl, 36
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
