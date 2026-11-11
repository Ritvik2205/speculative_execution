.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
or eax, -1161451853
and al, -54
xor al, dl
adc bl, 88
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
cmp al, dl
sbb ecx, 99
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
