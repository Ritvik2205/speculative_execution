.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
cmp bl, cl
jmp .bb_0.1
.bb_0.1:
test cl, 43
add dil, 88
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and ax, 26813
xor bl, dl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 98
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 58
test rbx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
