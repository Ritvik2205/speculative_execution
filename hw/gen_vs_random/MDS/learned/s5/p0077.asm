.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 77
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and cx, -2
test edi, -1252846009
jmp .bb_0.1
.bb_0.1:
and cl, al
test sil, -96
and al, -114
xor cl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
test al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
