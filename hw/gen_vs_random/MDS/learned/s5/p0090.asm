.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
xor al, 34
xor dil, -124
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or al, bl
test rsi, 100
or dl, -97
test cl, 91
btr ecx, esi
or sil, -78
test ebx, -2015966884
xor rdx, -59
bts ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
