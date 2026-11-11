.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
inc rdx
bts ebx, 65
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 26
test al, 59
sbb eax, 99727957
lea esi, qword ptr [rcx]
sub dl, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, 1938514106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
