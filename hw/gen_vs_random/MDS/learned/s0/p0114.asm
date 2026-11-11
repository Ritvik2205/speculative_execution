.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
test ax, 6113
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or rax, -689609688
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
test cl, bl
sbb bl, 44
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor ax, -23364
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
or cl, 39
test al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
