.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
xor al, -89
btc si, 43
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test esi, 425331143
and sil, dil
bt bx, di
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and di, 91
test dil, -80
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
