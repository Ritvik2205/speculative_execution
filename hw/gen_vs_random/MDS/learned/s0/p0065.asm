.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 14
xor cl, 15
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor cl, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
jmp .bb_0.1
.bb_0.1:
or esi, ecx
xor ecx, 8
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test al, -7
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 50
xor dl, sil
and rax, 41
test sil, al
btr ax, dx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
