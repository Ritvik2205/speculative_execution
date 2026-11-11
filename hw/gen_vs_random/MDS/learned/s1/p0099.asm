.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and dl, -73
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
or bl, 43
xor dl, -19
xor rax, 459999114
jmp .bb_0.1
.bb_0.1:
test esi, 425331143
test eax, 343548072
or dil, -41
test esi, 1857129931
or rbx, -72
and ax, -122
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor cl, 83
and ax, 19740
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
