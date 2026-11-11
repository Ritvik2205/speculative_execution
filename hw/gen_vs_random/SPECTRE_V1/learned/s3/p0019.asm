.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
cmovns rax, rsi
and bl, bl
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
cmovb bx, cx
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
mov cl, cl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
mov rsi, 8418490294875847673
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
