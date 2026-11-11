.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle ecx, edi
cmp rdx, 56
bts edx, 29
or al, -57
and dl, 59
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
or ax, 11821
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
