.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -73
mov dl, dil
add dil, -61
xor sil, 66
add al, -44
jmp .bb_0.1
.bb_0.1:
and dil, dl
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and dx, -107
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
