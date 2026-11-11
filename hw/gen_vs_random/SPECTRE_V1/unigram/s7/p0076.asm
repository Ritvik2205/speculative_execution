.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 41
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
add al, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
sbb edx, eax
cmovb edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rax, -273199823
xor cl, 78
cdq
add cl, -27 # instrumentation
sets cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
