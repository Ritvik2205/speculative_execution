.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and sil, -84
mov al, sil
add sil, -18
and cl, -101
dec dl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
sub sil, 71
xor ax, -29507
or dil, -104
adc dil, -48
or eax, -612395655
sub cl, 78
sub bl, -98
adc dl, al
add al, al
cmp dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
