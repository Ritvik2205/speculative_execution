.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
bts si, 158
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
btr edx, 255
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
cmovz rdi, rbx
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
xor rax, -345061362
or ax, -23697
cmovnb ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
