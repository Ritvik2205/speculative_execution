.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 34
lea rdi, qword ptr [rdx + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
or al, dl
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sub rsi, 100
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
