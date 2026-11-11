.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ebx, -33
adc dl, -49
xor bl, -38
test dl, -105
setno dil
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
cmp bl, dl
test cl, -33
and bl, -65
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
