.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
bts cx, 158
xor esi, -112
sub bl, 66
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and al, -87
neg edx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor bl, bl
test dx, cx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
cmovp rax, rdx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
cmp rax, 1097504565
test dl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sub ax, 6579
btc rdx, 178
add bl, cl
adc cl, al
sbb al, 31
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi], 61
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
imul di
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
mov rdx, -3284511739993892328
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
btc dx, si
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
dec ax
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
bt rsi, 153
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
