.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and dl, dl
xor al, cl
and al, -68
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rsi + rbx]
sub dl, dil
or dl, cl
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
