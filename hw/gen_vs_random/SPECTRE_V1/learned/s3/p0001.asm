.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
sbb dil, dl
add cl, -127
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 27
jb .bb_0.3
jmp .exit_0
.bb_0.3:
setz cl
or rax, -1571963467
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
