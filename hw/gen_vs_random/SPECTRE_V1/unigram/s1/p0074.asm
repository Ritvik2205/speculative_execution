.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 46
lea edi, qword ptr [rdx + rdx + 11]
and edi, 54
cmp al, bl
setns al
and rax, rbx
sbb eax, 100
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test bx, 89
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
cdq
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
or al, 100
bt rcx, rbx
bt bx, bx
inc dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
