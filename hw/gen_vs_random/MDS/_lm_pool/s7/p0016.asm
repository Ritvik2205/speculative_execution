.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
test eax, -1634766116
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, -7
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or si, 94
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
