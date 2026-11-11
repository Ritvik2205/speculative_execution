.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
mov al, cl
btc cx, 68
cmp dl, -115
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
test cl, -24
sub cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
bt edi, 121
and rdi, 75
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
