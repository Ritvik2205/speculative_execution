.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
add dl, 47
and cl, -57
test cl, -33
add sil, 2
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 100
mov bl, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
sub al, dl
cmp cl, sil
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and sil, -55
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
cmovnz rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
