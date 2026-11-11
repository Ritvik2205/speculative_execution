.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
inc dil
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
not ecx
cmovbe edx, ebx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
not cl
cmp rdx, 72
jmp .bb_0.1
.bb_0.1:
test al, -32
jmp .bb_0.2
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
test dl, dl
or dl, -92
xor si, -50
not sil
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
