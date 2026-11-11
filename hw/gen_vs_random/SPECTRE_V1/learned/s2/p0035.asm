.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts di, di
adc esi, -66
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 59
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
sbb dl, al
add al, -44
cmp dl, dil
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
