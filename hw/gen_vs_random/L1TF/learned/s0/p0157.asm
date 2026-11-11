.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor cx, 113
mov al, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test dil, -126
test dil, -126
cmovle rsi, rdx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
