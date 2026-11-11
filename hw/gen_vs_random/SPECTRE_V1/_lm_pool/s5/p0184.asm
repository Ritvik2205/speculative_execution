.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 80
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
add sil, 2
xor bl, dl
sub cl, bl
cmovno ax, di
jle .bb_0.1
jmp .exit_0
.bb_0.1:
setle bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
sub bl, -6
and rbx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
