.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 52
lea rdi, qword ptr [rdx]
cmp eax, -563371897
or dl, dl
cmovs rax, rax
or al, 100
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
add dil, -75
test ax, 19339
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, bl
add al, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
