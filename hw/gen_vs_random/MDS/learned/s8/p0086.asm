.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
test al, dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or al, al
and bx, 41
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.1
.bb_0.1:
test al, 91
xor cl, 15
and rdx, 73
btc ax, cx
xor al, -26
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
xor sil, -14
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
