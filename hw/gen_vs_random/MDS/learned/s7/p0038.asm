.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
not dl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
or al, cl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and bl, 68
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
test al, 91
and cl, al
or bl, dl
or al, -61
test dl, -85
and ax, -122
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
or rax, -1523798580
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
