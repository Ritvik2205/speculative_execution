.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sbb rax, 1131444263
sbb cl, -11
cmovo rbx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
xor al, 16
xor ax, 0
btc rax, 14
cwde
jmp .bb_0.1
.bb_0.1:
add dl, cl
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
xor edi, edx
test eax, 645518295
and dil, -82
lea ebx, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
