.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
test dl, 9
not al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
test al, -7
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test eax, -675944960
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor al, cl
and dil, -62
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
