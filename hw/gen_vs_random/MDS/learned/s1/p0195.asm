.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, 7
or rax, 1020005579
test dl, -85
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
test rsi, 1
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or bl, cl
jmp .bb_0.1
.bb_0.1:
bts rbx, 115
or sil, al
jmp .bb_0.2
.bb_0.2:
test esi, 425331143
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
or rsi, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
