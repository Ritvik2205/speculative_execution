.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 100
and cl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
bt rbx, rsi
and al, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
or bl, -98
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bt bx, dx
bt ebx, edx
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
cmovno dx, cx
or rdi, 67
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 14
bts rdi, 30
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
btr rax, 20
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
cmovnbe dx, di
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
