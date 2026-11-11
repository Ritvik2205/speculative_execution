.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
add dl, -1
jmp .bb_0.1
.bb_0.1:
test cl, 13
and al, -68
inc esi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 24
cmovs ax, di
xor cl, sil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
