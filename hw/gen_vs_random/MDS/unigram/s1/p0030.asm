.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 19
and cx, di
and dx, ax
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
or dil, -57
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
or cl, 10
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
cmovbe cx, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
cmovnl di, cx
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
btc rax, 45
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 63
and dil, 71
bt dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
