.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and dx, 38
btr bx, 144
add dl, 52 # instrumentation
sets bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
btc ecx, 52
jns .bb_0.1
jmp .exit_0
.bb_0.1:
mov ecx, edi
cmovnle rdi, rbx
xchg rcx, rbx
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
xor cl, -91
add rbx, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
