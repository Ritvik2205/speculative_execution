.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 25
setb cl
jmp .bb_0.1
.bb_0.1:
or cl, dl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 75
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
cmovs cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
