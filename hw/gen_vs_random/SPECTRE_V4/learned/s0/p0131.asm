.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test ax, 23760
test ecx, 42
neg dl
sub cl, -74
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
cmovs edx, ecx
sbb ax, -19255
xor ax, bx
dec bl
movzx dx, dl
sbb al, -101
test dl, 19
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 24
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
and ebx, 94
inc edx
sub bl, 17
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
not si
sbb bl, 57
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
test rax, -344032571
lea si, qword ptr [rdx]
add si, 4
cmp bl, bl
movzx ecx, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
or ebx, edx
add dl, -99 # instrumentation
not ecx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
or bx, dx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
cmp ax, 23131
test ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
