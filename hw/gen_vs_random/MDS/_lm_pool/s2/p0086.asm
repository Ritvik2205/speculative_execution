.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
test bl, dl
or dl, cl
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 20
xor rbx, 89
and ebx, 62
and al, dl
or cl, 30
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and al, -8
or al, -24
test eax, 424329527
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
