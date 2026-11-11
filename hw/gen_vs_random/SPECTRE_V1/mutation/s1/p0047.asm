.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -51 # instrumentation
cmovl edi, edx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
bt edi, 134
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 110 # instrumentation
add bl, -22 # instrumentation
cmovnz ebx, ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
neg rcx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
or cl, cl
setno bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
mov rdx, 3189408690989687296
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
jmp .bb_0.2
.bb_0.2:
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
