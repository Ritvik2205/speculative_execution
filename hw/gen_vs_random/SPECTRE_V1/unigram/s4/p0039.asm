.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 47
adc cx, -30
lea ecx, qword ptr [rdi + rdi]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
bt rsi, rsi
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
or cl, dl
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
