.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
xor al, -89
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and cl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
test dil, -80
xor al, dl
and bl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
