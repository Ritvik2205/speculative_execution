.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 38
btc rax, 14
xor ax, 0
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
cmovo rbx, rdi
sbb rax, 2044012157
cwde
sbb cl, -11
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add dl, cl
lea ebx, qword ptr [rdi + rbx]
test eax, 645518295
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and dil, 58
xor edi, edx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
