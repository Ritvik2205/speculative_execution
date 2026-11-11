.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rcx, rcx
xor sil, -46
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
btc bx, di
and sil, dl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 43
cmovnz ecx, ebx
btc di, 233
jmp .bb_0.1
.bb_0.1:
test dl, dil
bts rbx, 115
or ecx, 52
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
cmovnp rax, rdx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
