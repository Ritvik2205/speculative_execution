.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea si, qword ptr [rax + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
test ecx, 5
jmp .bb_0.1
.bb_0.1:
add dil, sil
or ax, -18131
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xchg edx, ebx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
mov dl, al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
