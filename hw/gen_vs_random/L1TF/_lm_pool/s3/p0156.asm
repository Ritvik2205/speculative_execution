.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 28
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and dil, 58
and al, dl
not al
jmp .bb_0.1
.bb_0.1:
xor dl, 9
sbb eax, -1165635662
test dil, sil
mov dil, sil
sbb al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
