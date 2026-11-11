.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
lea rbx, qword ptr [rcx + rsi + 85]
lea dx, qword ptr [rcx + rax + 54]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sbb al, dl
add dl, sil
xor bx, 77
lea ax, qword ptr [rcx + rdx + 14]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
