.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, ax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 96
and al, cl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
adc dil, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rsi + rcx]
add cx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
