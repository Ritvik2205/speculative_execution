.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 68
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add dl, -56 # instrumentation
cmovs rcx, rdx
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
bt edx, eax
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
