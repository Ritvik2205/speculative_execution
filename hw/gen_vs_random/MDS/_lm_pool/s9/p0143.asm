.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and esi, 98
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor eax, 2063216578
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
jmp .bb_0.1
.bb_0.1:
test dil, 46
test dil, -80
xor bx, 58
xor sil, -46
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
or al, -78
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
