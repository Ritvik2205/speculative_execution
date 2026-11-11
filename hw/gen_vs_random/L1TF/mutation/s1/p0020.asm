.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rbx, rdi
cwde
xor ax, -16232
sbb cl, -11
xor al, 89
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
btc rax, 14
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sbb rax, 803312930
jmp .bb_0.1
.bb_0.1:
test eax, -2032743474
add dl, cl
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
lea ebx, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
xor edi, edx
and dil, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
