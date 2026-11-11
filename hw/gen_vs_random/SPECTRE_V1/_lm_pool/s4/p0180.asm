.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 27
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
lea edi, qword ptr [rbx]
or eax, -126
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -120
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
cmp dil, dl
and dl, -92
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
