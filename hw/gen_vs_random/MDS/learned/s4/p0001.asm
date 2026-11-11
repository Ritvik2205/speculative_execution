.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and cl, dl
or dl, 51
btr rdx, 5
and ecx, -104
and cl, -111
jmp .bb_0.1
.bb_0.1:
test eax, 343548072
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
or al, -78
test dil, -51
test sil, bl
and ebx, 60
and ebx, 10
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
