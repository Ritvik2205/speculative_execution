.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
add cl, dl
sub dil, -111
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
cmp dil, -78
xor esi, 106
or cl, -62
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
mov bl, -31
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
bts cx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
