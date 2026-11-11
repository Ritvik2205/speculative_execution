.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
test esi, 425331143
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or bl, al
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
test al, 127
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
test eax, 158941032
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
xor rdx, -59
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
