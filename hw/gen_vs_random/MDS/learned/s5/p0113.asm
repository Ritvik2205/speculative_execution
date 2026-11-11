.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, cx
or al, dil
test sil, -55
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or dl, -89
or al, 54
btc rcx, 98
bt ax, bx
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
bt si, di
xor rax, -404206377
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
