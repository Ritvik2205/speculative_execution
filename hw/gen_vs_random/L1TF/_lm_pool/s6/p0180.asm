.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 69
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or dil, -113
or cl, -78
btc ax, si
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 12
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xor dil, -42
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
