.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
sbb dil, 60
btr ax, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or cl, 105
jmp .bb_0.1
.bb_0.1:
add dl, -56 # instrumentation
cmovs rcx, rax
add dil, cl
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
jmp .bb_0.4
.bb_0.4:
add dl, -56 # instrumentation
cmovs rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
