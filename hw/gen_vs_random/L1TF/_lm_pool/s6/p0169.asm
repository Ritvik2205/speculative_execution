.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
lea cx, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
cmp ax, 7046
jmp .bb_0.1
.bb_0.1:
imul rbx
jmp .bb_0.2
.bb_0.2:
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
test cl, 85
lea rdi, qword ptr [rcx + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
