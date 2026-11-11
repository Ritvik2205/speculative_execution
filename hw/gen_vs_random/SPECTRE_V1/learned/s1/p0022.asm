.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
cmp al, 62
cmovle bx, dx
lea rax, qword ptr [rcx]
test cl, -120
lea di, qword ptr [rsi + rbx]
sub al, cl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 2
sbb eax, 1332762061
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
