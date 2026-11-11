.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or ax, -20176
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
xor dl, al
and cl, -19
and rax, 1886208862
test edx, -372470678
or dil, -41
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor al, -4
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
