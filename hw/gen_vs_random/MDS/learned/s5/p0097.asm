.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
btr esi, edi
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
or al, -78
and bl, bl
test al, 22
test al, -81
test al, dil
and al, -114
bt di, bx
and di, 91
test bl, cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
