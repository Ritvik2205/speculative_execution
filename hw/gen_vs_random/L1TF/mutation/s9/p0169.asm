.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
xor al, 89
sbb cl, -11
sbb rax, 2044012157
cwde
xor ax, -16232
cmovo rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
btc rax, 14
jmp .bb_0.1
.bb_0.1:
and dil, 58
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
add dl, cl
xor edi, edx
lea ebx, qword ptr [rdi + rbx]
test eax, 645518295
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
