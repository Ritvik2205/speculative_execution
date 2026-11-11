.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor al, 8
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 62
test sil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and bx, 7
or dil, 16
or cl, cl
xor dil, 8
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
test cl, al
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
test edi, -1252846009
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
btr dx, si
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
