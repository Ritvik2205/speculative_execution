.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
test sil, al
or dl, -26
sbb dl, -62
cmp dl, bl
adc cl, -4
cmp cl, bl
add cl, dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
cmp ecx, 87
add al, bl
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
dec bl
mov bl, cl
sub sil, cl
add al, al
sub rdx, 6
test cx, 7280
sbb al, 102
cmp cl, al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
or dl, al
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
dec al
sbb dil, 48
or ecx, 17
cmp al, 105
or bl, -99
adc bl, al
or al, -83
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
test bl, dil
xchg rbx, rax
sub bl, 56
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
