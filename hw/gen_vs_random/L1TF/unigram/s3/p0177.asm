.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
btc rdx, 70
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
sbb edi, 35
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
btc di, 237
imul rax, rcx
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
mov cx, ax
imul cx, ax, 73
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
