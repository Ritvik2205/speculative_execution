.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
and rsi, 70
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
or cl, al
bts cx, ax
and sil, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
or cl, 7
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
or bl, al
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
