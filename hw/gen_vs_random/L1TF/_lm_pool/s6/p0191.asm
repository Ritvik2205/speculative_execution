.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
lea rdx, qword ptr [rcx + rbx + 93]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
test eax, 645518295
setnb bl
lea di, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
or al, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
