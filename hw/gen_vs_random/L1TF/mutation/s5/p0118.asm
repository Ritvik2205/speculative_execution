.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
btc rax, 14
sbb cl, -11
sbb rax, 803312930
xor al, 16
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
xor ax, -24879
cwde
jmp .bb_0.1
.bb_0.1:
and dil, 58
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
xor edi, edx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
add dl, cl
lea ebx, qword ptr [rdi + rbx]
test eax, 899472326
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
