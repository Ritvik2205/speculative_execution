.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 72
jmp .bb_0.1
.bb_0.1:
test edi, 91
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
sub cl, -49
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
