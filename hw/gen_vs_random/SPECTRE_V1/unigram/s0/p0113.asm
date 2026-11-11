.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, al
add rcx, 23
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
add cl, -127
setnb bl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
test al, 59
setnz bl
mul sil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -105
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
btc bx, si
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
