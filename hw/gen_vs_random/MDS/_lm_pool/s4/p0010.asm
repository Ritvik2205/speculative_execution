.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and di, 91
test cl, dl
not al
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
or rax, -689609688
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and cl, al
not cl
or sil, -78
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
