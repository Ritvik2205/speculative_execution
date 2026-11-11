.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
cmp esi, 51
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
lea rcx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
sub dx, -23
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
setnle cl
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
