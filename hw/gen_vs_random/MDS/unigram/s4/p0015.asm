.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and cl, -115 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
not dx
btr rdi, rdi
btc dx, 38
or rsi, 80
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and al, 33 # instrumentation
cmovnle edi, edx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 62
jmp .bb_0.1
.bb_0.1:
test edi, 49
cmovle cx, cx
and dl, -49 # instrumentation
cmovno dx, ax
bt rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
xor ecx, 72
and cl, 85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
btr rdi, 39
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
