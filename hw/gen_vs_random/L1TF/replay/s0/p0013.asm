.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 38
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
sbb rax, 1183957102
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovo rbx, rdi
sbb cl, -11
cwde
btc rax, 14
xor ax, 30996
jmp .bb_0.1
.bb_0.1:
test eax, 645518295
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
lea ebx, qword ptr [rdi + rbx]
and dil, -82
xor edi, edx
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
