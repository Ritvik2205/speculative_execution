.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
xor dil, -124
and cx, -8
xor di, 93
test rax, -708244380
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or rcx, 54
xor cx, -18
test dil, bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 16
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rax, 1886208862
and dil, bl
test al, bl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xor dl, al
cmovle si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
