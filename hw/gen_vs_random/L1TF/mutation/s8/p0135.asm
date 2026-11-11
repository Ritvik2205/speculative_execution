.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, 14
xor al, 16
sbb cl, -11
xor ax, 0
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovo rbx, rdi
cwde
sbb rax, 1131444263
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add dl, cl
and dil, 58
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
xor edi, edx
test eax, -2032743474
lea ebx, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
