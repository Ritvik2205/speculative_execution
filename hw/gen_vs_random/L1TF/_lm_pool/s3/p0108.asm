.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
test al, -32
lea ax, qword ptr [rbx + rcx + 75]
xor bl, cl
sub al, bl
setno al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rsi]
sbb rax, 1131444263
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
