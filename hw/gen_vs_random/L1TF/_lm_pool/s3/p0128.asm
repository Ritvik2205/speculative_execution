.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
or al, -57
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 82
and dl, cl
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rcx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
