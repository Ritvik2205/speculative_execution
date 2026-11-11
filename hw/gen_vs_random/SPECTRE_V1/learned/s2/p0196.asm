.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, bl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add sil, -68
or rax, -3
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 33
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
