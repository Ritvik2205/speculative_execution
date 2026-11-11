.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, si
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
test cl, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test bl, 45
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
add bl, bl
btc bx, ax
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
