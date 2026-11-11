.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor al, 45
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 55
or sil, -44
cmp dx, 79
jmp .bb_0.5
.bb_0.5:
lea di, qword ptr [rcx + rbx + 76]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
