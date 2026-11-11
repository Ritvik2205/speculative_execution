.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -120
lea ax, qword ptr [rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
test ax, 636
or eax, 848176907
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
