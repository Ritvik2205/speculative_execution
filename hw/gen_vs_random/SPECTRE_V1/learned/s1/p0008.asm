.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
lea cx, qword ptr [rax]
sub rcx, 13
lea di, qword ptr [rdx]
sub bl, -6
sub al, sil
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
cmp rsi, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
