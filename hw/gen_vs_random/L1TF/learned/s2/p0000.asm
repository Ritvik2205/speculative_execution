.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
sub bl, dl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
cmovnle ebx, edx
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rbx]
xor bl, -5
test al, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
