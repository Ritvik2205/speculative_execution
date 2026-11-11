.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or sil, al
xor al, sil
jmp .bb_0.1
.bb_0.1:
xor dil, -124
test sil, bl
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test rax, 1000448998
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
test bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
