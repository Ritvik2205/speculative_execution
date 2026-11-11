.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
or al, dil
and bl, 68
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
test sil, cl
and sil, 89
jmp .bb_0.1
.bb_0.1:
and cl, cl
test al, -7
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and cx, -2
btr cx, 136
xor ax, -6793
and rax, -2039117613
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
