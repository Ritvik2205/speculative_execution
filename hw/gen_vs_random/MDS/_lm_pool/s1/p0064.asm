.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
test dl, bl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
xor dil, -124
or sil, -78
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and dl, -73
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
bt bx, di
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
jmp .bb_0.2
.bb_0.2:
and sil, sil
or sil, cl
xor al, cl
or al, -17
or ax, -14271
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
