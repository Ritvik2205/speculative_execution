.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
sub al, bl
test bl, 84
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 72
jmp .bb_0.1
.bb_0.1:
test dl, -37
sub rax, -1628299544
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
add cl, bl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
