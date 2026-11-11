.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovo rbx, rdi
cwde
sbb cl, -11
btc rax, 14
xor ax, 22976
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
sbb rax, 62
xor al, 16
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
and dil, -22
test eax, -2032743474
add dl, cl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
lea ebx, qword ptr [rdi + rbx]
xor edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
