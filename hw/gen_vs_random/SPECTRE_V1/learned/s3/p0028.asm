.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
cmp al, 77
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
or ax, 19104
not bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
