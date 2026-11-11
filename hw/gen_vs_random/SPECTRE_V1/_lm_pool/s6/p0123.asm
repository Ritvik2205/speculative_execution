.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
sub al, bl
lea di, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
jno .bb_0.2
jmp .exit_0
.bb_0.2:
bts esi, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
