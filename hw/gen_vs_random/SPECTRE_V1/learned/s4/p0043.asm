.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
lea rbx, qword ptr [rcx + rsi + 42]
cmp edi, 99
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
sub dil, -111
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
