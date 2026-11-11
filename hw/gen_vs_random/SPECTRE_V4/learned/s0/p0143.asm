.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
add al, -55
test bl, -29
or dl, dl
adc al, sil
or al, cl
test al, 115
xor cl, 13
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
cmp cl, sil
cmp dil, sil
xor dil, -23
cmp al, -53
add dil, 105
add al, dl
and sil, dil
inc bl
mov dl, bl
and dl, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
