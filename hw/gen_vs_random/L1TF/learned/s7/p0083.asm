.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -24879
setno al
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
add cl, 88
add dl, cl
mov al, -101
cmovnp ax, bx
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
