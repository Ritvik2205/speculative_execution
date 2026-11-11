.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
cmovle ebx, edx
sbb dl, dil
movsx rdx, cl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 23
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 78
add dl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
dec bl
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 70
cmp cl, 83
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 2
sub dl, sil
cmovns si, si
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
and dl, al
cmp dl, 14
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
sub dil, -10
adc dx, 93
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
or dl, sil
btc cx, dx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
not rdx
adc al, 36
bt si, bx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
inc al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
