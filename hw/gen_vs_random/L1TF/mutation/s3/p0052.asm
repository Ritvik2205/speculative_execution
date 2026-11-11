.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 64 # instrumentation
sbb bl, dl
xor al, al
or cl, 105
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
test al, -84
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
sbb al, -14
jmp .bb_0.1
.bb_0.1:
test eax, -2032743474
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
