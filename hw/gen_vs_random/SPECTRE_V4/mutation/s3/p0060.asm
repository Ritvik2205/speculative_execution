.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
btc edx, 108
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
movzx rax, di
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmp cl, dl
dec cl
cmp rdi, 28
or cl, cl
bt si, 18
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
mov ebx, ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, 105 # instrumentation
cmovl esi, ecx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
add bl, 42 # instrumentation
movsx rdx, bl
cmovnp ax, dx
mov edi, -744634650
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
inc rax
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
test edx, ecx
adc rsi, rax
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sbb bl, -75
mul bl
sub al, 11
movsx esi, al
xor rdi, rcx
sbb rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
adc ebx, -5
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
dec bl
cmovl cx, cx
cmovs rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
cmovnz cx, si
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
