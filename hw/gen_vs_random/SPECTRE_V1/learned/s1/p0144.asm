.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
sub ax, di
sub cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
