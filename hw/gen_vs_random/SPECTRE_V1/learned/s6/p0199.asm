.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 55
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
lea ax, qword ptr [rdx + rcx]
cmp eax, -240917296
cmp bl, cl
sub cl, -47
sbb ecx, 55
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
inc al
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
lea rax, qword ptr [rdi + rcx + 40]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
