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
adc ax, -27488
btr ax, 89
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
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
