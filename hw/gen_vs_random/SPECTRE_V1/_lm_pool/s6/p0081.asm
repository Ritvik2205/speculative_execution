.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
mov dil, al
sbb bl, -41
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
add al, -13
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
adc cx, -30
lea bx, qword ptr [rcx + rax]
cmp cl, 87
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
