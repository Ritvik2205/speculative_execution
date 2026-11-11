.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 27703
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
xor al, 45
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sbb cl, -11
cmovo rbx, rdi
sbb rax, 62
cwde
btc rax, 14
jmp .bb_0.1
.bb_0.1:
and dil, -22
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
lea ebx, qword ptr [rdi + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
test eax, 899472326
xor edi, edx
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
