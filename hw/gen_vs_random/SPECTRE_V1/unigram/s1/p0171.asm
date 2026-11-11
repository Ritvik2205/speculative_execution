.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle eax, edi
xchg al, bl
cmovs ax, cx
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edx
cmp cl, 67
lea rdi, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 13
sub rdx, 76
movsx rcx, si
xor edi, ecx
sub cl, -47
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
and rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
