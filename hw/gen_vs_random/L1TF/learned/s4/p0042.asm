.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
neg cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
add al, -102
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
