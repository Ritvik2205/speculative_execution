.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 67
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or sil, dil
or si, -12
xor bl, sil
not bl
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
and al, bl
and bl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or dil, sil
test cl, -86
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
