.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
not sil
test al, cl
or al, -22
test bl, 65
or rbx, -72
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or dil, bl
xor cl, 55
test sil, dil
and bl, sil
xor bl, -88
xor dil, -124
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
