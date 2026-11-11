.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
test al, 15
btc ax, bx
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 49
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle eax, esi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
