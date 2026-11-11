.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 54
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
btc rdx, 11
btc rcx, 29
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
xor rbx, 89
bts ecx, 184
cmovl dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
not dil
jmp .bb_0.1
.bb_0.1:
and sil, -9
cmovp ebx, ebx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 8
or ax, -11837
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
btr ebx, eax
cmovo di, bx
btr ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
