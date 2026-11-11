.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and bl, 68
or dl, -89
test sil, al
and ax, -10351
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
or cl, -77
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
