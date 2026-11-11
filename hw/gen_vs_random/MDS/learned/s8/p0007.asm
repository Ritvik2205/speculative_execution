.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
btr dx, cx
xor rdx, -59
xor dl, bl
or sil, -49
and al, 35
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
btr edx, esi
or rdx, -109
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
xor cl, bl
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
