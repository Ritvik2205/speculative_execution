.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 41
add dil, sil
lea cx, qword ptr [rsi]
and dl, -92
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
