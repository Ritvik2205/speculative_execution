.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, di
xor bl, -27
test al, dil
and si, -121
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
xor bl, -102
and bl, 68
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or al, cl
btc cx, 115
and sil, cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
