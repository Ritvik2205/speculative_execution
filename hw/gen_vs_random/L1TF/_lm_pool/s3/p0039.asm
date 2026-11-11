.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
bswap rcx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
lea rdx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
test di, 9
bts ax, 201
test sil, 29
jmp .bb_0.1
.bb_0.1:
test esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
