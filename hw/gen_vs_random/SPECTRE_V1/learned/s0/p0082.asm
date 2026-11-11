.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
sbb al, cl
jns .bb_0.3
jmp .exit_0
.bb_0.3:
test cl, -33
add al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
