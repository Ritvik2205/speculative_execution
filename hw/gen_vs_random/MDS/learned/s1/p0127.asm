.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, cx
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
or dil, -71
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
xor dl, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
xor sil, 110
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor di, 40
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
jmp .bb_0.1
.bb_0.1:
test cl, dl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
xor sil, dil
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
or al, dl
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
