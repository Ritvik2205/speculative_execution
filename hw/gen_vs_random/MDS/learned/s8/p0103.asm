.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
not cl
test dl, bl
or al, -75
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
xor ax, -6793
and rbx, rcx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and cl, dl
test cl, 73
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
