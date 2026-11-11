.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
test cl, -52
add dl, bl
and dl, -104
test al, -85
or eax, 1001462340
or eax, -863161215
add dl, cl
or bl, 80
add cl, al
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
cmp bl, -16
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
