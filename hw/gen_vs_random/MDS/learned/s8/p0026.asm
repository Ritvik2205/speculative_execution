.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, cx
or dl, 51
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
and rax, 1250429750
xor al, cl
xor dl, sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test rbx, 1
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
or al, -78
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
