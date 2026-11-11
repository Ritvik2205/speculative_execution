.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
xor sil, 64
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, cl
inc dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
xor cl, sil
and ax, 7954
xor al, bl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
