.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
mov cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
