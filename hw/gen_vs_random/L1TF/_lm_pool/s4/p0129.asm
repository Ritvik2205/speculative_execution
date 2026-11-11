.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
not cl
cmp rsi, 30
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
test bl, 45
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 67
or al, -57
sub dl, -34
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 70
sub al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
