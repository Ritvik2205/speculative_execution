.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor al, -4
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
and cl, -19
not sil
bt bx, dx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 4
jmp .bb_0.2
.bb_0.2:
test dl, 27
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
xor al, -19
xor rax, -91
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 23
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
bts ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
