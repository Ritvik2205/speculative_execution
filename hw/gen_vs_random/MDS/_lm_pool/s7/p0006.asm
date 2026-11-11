.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
or bl, al
test sil, 17
xor al, bl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
jmp .bb_0.1
.bb_0.1:
xor dl, -43
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test al, bl
test sil, -55
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and al, dil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
