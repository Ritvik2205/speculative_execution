.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
and ax, -16061
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and al, -54
xor dil, 8
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dil, al
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
or bl, dl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 47
btr si, cx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 43
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
