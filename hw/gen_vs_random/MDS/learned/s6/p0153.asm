.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
or cl, sil
btc di, cx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and bl, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
test al, bl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and al, cl
xor di, -83
test dil, dl
btc ecx, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
