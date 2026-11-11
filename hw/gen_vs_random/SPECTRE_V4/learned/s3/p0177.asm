.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
cmp rax, -47
and al, -12
mov dil, cl
test al, 72
xor al, sil
or al, 27
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
adc dil, 112
dec dil
and eax, -1056713114
add al, -4
adc bl, dl
test rax, -813666773
sub dil, al
cmp al, -122
sub dil, cl
test si, 8
test cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
