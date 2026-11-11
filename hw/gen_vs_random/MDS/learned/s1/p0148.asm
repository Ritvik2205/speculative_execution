.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -8
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rax, 452940266
and cx, -2
jmp .bb_0.1
.bb_0.1:
or cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor al, 115
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and bl, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
