.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
xor al, 16
sbb rax, 1131444263
cwde
btc rax, 14
xor ax, 30996
sbb cl, -11
cmovo rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea ebx, qword ptr [rdi + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and dil, 58
add dl, cl
test eax, 899472326
xor edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
