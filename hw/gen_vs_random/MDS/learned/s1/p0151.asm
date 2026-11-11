.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
test bl, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
bt di, 52
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and cl, cl
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx + rbx + 45]
jmp .bb_0.2
.bb_0.2:
not bl
xor bl, -27
or al, -22
or di, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
