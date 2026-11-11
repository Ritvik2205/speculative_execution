.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
cmp rcx, -121
or dl, cl
xor dx, -43
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
test sil, -119
jmp .bb_0.1
.bb_0.1:
dec sil
xor ax, 20236
test cl, 78
or rdx, 1
xor cl, dil
sub al, cl
or cl, dil
cmp cl, dl
test dl, 114
xor al, cl
add cl, -62
add al, al
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
test bl, 78
xor cl, dil
add dl, dl
and sil, -84
add bl, cl
cmp al, -122
test dl, 114
add al, -32
sub sil, 71
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
