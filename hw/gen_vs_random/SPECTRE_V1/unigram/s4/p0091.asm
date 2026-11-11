.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
add esi, 85
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
lea rdx, qword ptr [rax + rbx + 53]
lea cx, qword ptr [rdx + rax + 44]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, rdi
cmp ecx, edi
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
inc sil
add bl, bl
setle al
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 27
lea cx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
