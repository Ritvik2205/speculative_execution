.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
xor rax, 20
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and ax, 37
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
cmp dl, -93
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
