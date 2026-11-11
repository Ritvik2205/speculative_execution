.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
sub dil, sil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
and bl, dl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
adc dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
cmp bl, al
add al, 40
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
