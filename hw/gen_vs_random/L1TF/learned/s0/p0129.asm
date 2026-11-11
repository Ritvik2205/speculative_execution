.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
xor cl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and edx, 78
sbb cl, -11
jmp .bb_0.2
.bb_0.2:
add dl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
jmp .bb_0.3
.bb_0.3:
lea di, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
