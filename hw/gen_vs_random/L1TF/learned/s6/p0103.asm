.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
lea rdi, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or edi, ecx
and cl, dl
or rdi, 83
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor dl, 64
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and bl, 89
or cl, 105
and rcx, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
