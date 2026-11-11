.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
xor al, -26
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
test ebx, -2015966884
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and cl, 79
and dil, 125
xor dl, -59
and cl, cl
xor cl, 15
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 10
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
test bl, bl
xor bl, dl
or cl, 6
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
