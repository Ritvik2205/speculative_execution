.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
cmovb bx, di
btc cx, di
and rcx, 24
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 44
or cl, -78
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and bl, dl
lea eax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
