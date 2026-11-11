.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
sub sil, -99
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
lea ecx, qword ptr [rdi]
and rdx, 88
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
