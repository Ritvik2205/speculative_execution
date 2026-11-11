.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
not al
and si, -121
xor al, sil
xor dl, -43
xor rax, -270810088
test rax, -708244380
or al, dil
and cl, -71
xor al, dl
test dl, al
or al, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test ecx, -1843375753
and cl, -71
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
