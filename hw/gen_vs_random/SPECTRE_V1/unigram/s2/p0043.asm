.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
lea cx, qword ptr [rsi + rcx]
lea bx, qword ptr [rcx + rax + 51]
and rax, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rax]
add bl, 26 # instrumentation
sbb sil, bl
cmp rax, rdx
mov edx, eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
cmovl edx, edi
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
and bl, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 87
sbb rcx, 70
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
