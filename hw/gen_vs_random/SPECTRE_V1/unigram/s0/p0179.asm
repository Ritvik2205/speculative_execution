.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, 2098460225
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 89
bts ax, 31
lea rbx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
inc ebx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
setnl al
sbb bl, 79
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
sub bl, -6
inc al
sub cl, -47
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
add dl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
