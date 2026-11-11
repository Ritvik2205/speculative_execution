.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
or dil, bl
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovb si, di
xor bl, -102
or dl, cl
jmp .bb_0.2
.bb_0.2:
and cl, bl
or ax, -20176
jmp .bb_0.3
.bb_0.3:
bt rcx, 69
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
