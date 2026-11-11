.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
add bl, 70
add bl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and bl, dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 76
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
or al, 100
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmovnbe rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
