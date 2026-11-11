.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor ax, 32760
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
sbb rax, -1841833326
btc rax, 14
sbb cl, -11
xor al, 45
cwde
jmp .bb_0.1
.bb_0.1:
and dil, -82
xor edi, edx
lea ebx, qword ptr [rdi + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
test eax, -2032743474
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
