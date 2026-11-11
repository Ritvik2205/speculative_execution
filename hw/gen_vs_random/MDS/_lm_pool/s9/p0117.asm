.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
or cl, -36
not dil
xor al, 99
or sil, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor al, -26
jmp .bb_0.1
.bb_0.1:
test cl, 62
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
xor al, dl
test sil, 41
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor sil, 94
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
