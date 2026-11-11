.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
cmovnp di, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub al, bl
sub cl, 116
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
sub al, dl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
sub dl, dil
inc ecx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
sbb ebx, eax
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor cl, dl
btc rdx, 42
cmovz rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
movzx ecx, sil
cmp sil, dl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
add al, 118
and bl, sil
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 97
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 65
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
cmovnbe cx, dx
dec bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
btr di, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
