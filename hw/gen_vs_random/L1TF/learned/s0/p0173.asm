.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rbx + rcx + 2]
jmp .bb_0.3
.bb_0.3:
and ecx, 41
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
bts ebx, 67
jmp .bb_0.4
.bb_0.4:
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
