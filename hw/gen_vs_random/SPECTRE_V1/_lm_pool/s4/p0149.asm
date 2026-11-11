.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
test bl, -8
lea rax, qword ptr [rdi]
sub al, dl
sbb dl, 127
and bx, -118
sbb cl, dl
lea edi, qword ptr [rbx]
sub bl, -19
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 62
add ecx, 57
cmovle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
