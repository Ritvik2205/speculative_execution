.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 34
xor al, -26
xor rcx, 71
test sil, 17
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
bts rdi, rdx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or ax, 85
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 20
xor bl, -88
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 86
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and cx, -8
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
