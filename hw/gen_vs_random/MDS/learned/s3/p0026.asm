.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
or dil, cl
test dil, -80
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
or bl, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
test bl, 65
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
xor dl, -43
jmp .bb_0.2
.bb_0.2:
test al, -81
xor bl, cl
jmp .bb_0.3
.bb_0.3:
test al, 66
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
