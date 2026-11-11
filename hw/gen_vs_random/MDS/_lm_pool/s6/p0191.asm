.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
test dil, -51
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
xor dil, 124
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
test dl, 9
or sil, -49
btc si, 99
and eax, 33
test eax, 1287331633
or al, 74
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and al, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
