.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
cmovnle rcx, rax
and bl, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
setz al
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
