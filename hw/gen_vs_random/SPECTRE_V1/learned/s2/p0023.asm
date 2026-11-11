.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
setnb cl
and bl, 124
adc rax, 1310333622
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
add al, cl
adc sil, dl
and al, bl
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
sub cl, -47
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
