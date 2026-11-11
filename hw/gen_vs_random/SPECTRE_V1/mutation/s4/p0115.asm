.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, 24404
btr ax, 89
add cl, 32 # instrumentation
cmovnbe rdi, rbx
adc al, al
lea ebx, qword ptr [rcx + rcx + 43124]
add cl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
sub si, 32
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
not dl
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
setnle al
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
