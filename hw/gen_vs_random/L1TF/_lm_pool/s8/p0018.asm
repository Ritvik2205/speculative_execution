.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and al, cl
lea rdi, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and bl, 89
add al, -46
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
or eax, 1495028166
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
