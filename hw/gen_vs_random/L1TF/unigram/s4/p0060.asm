.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 97 # instrumentation
cmovnbe ecx, edi
xchg cx, bx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
or cl, dl
cmovnl si, ax
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
adc dl, cl
lea rbx, qword ptr [rcx + rbx + 87]
cmovs rcx, rbx
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
lea rax, qword ptr [rdx]
sbb rax, rax
test bx, ax
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
