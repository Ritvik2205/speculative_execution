.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, di
or dil, bl
bts rax, rbx
xor rax, -91
test dl, bl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xor rax, -1128378406
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and sil, 89
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
