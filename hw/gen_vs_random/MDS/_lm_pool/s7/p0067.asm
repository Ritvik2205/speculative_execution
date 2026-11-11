.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
or sil, cl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or cl, 119
test dil, dl
xor al, bl
or cl, al
xor cx, -18
and sil, -9
and dl, dl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
