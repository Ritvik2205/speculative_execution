.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 84
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sub al, bl
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
sub al, -66
and dl, -92
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
sub bx, 31
sub cl, al
setns al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
