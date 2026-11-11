.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or al, cl
test edx, -1561252782
xor bl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and al, -8
and dil, 125
jmp .bb_0.1
.bb_0.1:
test sil, -96
or bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
xor al, 9
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
or sil, -78
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
