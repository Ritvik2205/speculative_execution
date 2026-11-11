.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
xor di, 18
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test esi, 64
add al, 56
add dil, 88
or al, dl
bswap rax
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
