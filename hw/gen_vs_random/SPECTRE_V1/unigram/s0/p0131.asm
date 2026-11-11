.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, bx
sub edi, 97
cmovnbe di, cx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
test rdx, 90
cmovbe rdx, rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, sil
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
mul di
and al, -119
add dl, 6 # instrumentation
adc rsi, 88
test bl, 63
add cl, -26 # instrumentation
cmovnp dx, ax
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
