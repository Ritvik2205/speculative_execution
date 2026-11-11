.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
cmovnbe rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
lea ebx, qword ptr [rcx + rcx + 43124]
adc al, al
adc ax, 24404
btr ax, 197
add cl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
not dl
sub si, 32
setnle al
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
cmovs rcx, rdi
cmovz ax, ax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 720259356
cmovp di, dx
imul rdx, rsi, 87
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
