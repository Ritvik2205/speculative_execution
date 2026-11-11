.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
or cl, 39
test al, -81
test cl, 91
xor al, bl
and dx, 60
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and bx, 29
or sil, al
not al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
or bl, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
