.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
adc dl, 80
sbb bl, sil
inc bl
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and al, bl
cmp sil, 25
add dl, 47
cmp ebx, -33
cmp al, 46
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
sub cl, -47
sub al, -66
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
