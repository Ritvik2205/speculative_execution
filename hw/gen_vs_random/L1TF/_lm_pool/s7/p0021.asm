.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 92
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cwd
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
xor ax, 30996
cmovb cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
