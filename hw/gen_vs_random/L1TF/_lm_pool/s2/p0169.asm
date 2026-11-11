.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
sub al, -75
mov edi, eax
and di, 21
or al, -57
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 55
and bl, cl
setns al
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
