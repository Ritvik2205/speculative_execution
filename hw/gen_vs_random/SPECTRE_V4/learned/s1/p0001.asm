.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
dec dil
or dl, -26
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test ecx, -304234347
sbb al, -3
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 10
add rbx, 88
and dl, -53
adc sil, bl
xor rax, 1049851782
mov al, bl
or cl, cl
and al, -1
add al, dil
and bl, dl
xor rax, 1049851782
sub cl, 18
add cl, al
or dl, cl
add dl, al
and dl, bl
or ax, -29521
cmp bl, -79
or bl, bl
and dil, dl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
sbb cx, -114
test cl, -31
or al, 27
cmp al, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
