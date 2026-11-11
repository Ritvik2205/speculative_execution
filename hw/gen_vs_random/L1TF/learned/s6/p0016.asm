.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
test dl, 84
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
lea rax, qword ptr [rcx + rdi + 52]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
cmp al, 56
neg rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
