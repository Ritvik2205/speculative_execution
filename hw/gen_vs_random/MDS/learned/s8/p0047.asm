.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
or al, -58
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
not al
and bx, 91
or al, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
test dil, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and cx, -8
or al, dl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
xor dil, -124
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
