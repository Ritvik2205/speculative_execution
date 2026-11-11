.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 5
and sil, -90
lea rsi, qword ptr [rax + rbx]
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
cmovno cx, di
jmp .bb_0.2
.bb_0.2:
test dl, -37
and ebx, -52
cmp cx, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
