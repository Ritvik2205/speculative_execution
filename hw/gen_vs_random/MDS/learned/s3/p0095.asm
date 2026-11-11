.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
test dl, cl
xor dl, sil
xor al, 122
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test sil, 41
or cl, bl
xor cl, 55
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test dl, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor cl, al
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or al, 30
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
