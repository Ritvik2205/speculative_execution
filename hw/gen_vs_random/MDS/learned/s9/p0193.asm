.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
xor dl, -59
or rsi, 51
test rdi, 48
or bl, dl
xor dx, 58
btr ax, 193
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor rax, -345061362
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
or al, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
