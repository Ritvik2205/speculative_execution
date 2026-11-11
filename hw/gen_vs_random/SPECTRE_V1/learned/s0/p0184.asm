.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 37
setno al
inc eax
add dil, al
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
test esi, 86
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
mov sil, al
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
test edi, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
