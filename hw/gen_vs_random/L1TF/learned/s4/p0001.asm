.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 49
xchg edi, ecx
jmp .bb_0.1
.bb_0.1:
or dil, -113
and cl, al
sbb sil, bl
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
