.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rdx
sub rbx, 80
and sil, 93
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
test dl, al
lea esi, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
add di, 28
movsx si, cl
or rax, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
