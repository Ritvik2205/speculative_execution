.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test edx, -1561252782
test cl, sil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test eax, -675944960
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and al, cl
and dl, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
