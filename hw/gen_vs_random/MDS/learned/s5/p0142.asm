.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
test dil, cl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 95
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
bt di, si
btr rax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
