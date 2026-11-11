.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
bts rsi, rdi
bts di, cx
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
xor dl, al
and di, 99
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
xor di, 93
and di, 99
not bl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
