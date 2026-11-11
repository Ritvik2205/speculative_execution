.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 6
test al, cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rsi, 65
xor al, 122
and rax, 498847670
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and dil, dil
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
or al, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
adc cl, 75
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
xor al, 8
xor al, dl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
