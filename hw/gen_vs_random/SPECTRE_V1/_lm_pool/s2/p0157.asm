.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc cx, -30
cmp cl, dil
add bl, dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
test al, cl
and cl, bl
add edi, -91
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
sbb dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
