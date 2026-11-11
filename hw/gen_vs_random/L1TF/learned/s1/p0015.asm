.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
and rax, 1163013815
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and dl, dl
and rax, 1994547909
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
