.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
test dl, 48
xor dil, cl
or al, 37
and cx, -2
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
jmp .bb_0.1
.bb_0.1:
and bl, 68
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
bt ax, si
and dil, cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 99
xor al, -26
not dil
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
