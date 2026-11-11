.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx]
or dl, 41
mul dil
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 22
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
adc bl, -73
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
xor eax, -1721938664
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
bt rdi, rbx
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 89
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
