.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
and al, -114
and cl, -71
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and cx, -2
or al, cl
and rax, -2039117613
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
xor dil, -124
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or al, -61
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
