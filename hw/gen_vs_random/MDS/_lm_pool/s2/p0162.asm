.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 79
or al, -75
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and sil, -69
and dil, -62
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
or cl, 7
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or al, -24
or dil, dl
and cx, -8
and di, 91
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
