.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
cmovl rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
btr cx, bx
btr rdi, 129
btr rsi, 146
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
or rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmovnle ebx, esi
and al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
or di, 0b1000000000000000 # instrumentation
bsr cx, di
xor cl, 55
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
