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
sub cl, -74
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
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
movzx cx, dil
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
bts eax, ecx
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
mov rdx, 87
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
xchg ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovz rcx, rdx
not dl
cmp ax, -15409
cmovb edx, eax
mov rsi, 67
movzx di, al
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
inc edx
lea edx, qword ptr [rsi + rdi + 55]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
