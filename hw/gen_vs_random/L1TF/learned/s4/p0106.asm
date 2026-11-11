.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
jmp .bb_0.1
.bb_0.1:
cmovno rdi, rbx
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or dl, bl
test al, -32
and dl, sil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
