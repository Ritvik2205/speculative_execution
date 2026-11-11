.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
not sil
xor rdx, -59
and di, 91
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor dil, al
or al, 30
and esi, 91
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
jmp .bb_0.2
.bb_0.2:
xor rax, -345061362
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
