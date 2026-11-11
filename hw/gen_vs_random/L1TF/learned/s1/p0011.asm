.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
or esi, ecx
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 72
jmp .bb_0.1
.bb_0.1:
xor rbx, rax
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test eax, 899472326
lea ax, qword ptr [rsi + rax + 56494]
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
