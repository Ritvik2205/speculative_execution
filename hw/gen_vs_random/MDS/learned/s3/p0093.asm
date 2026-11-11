.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 41
or al, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
xor al, -19
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test cl, 0
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
test sil, cl
and cl, al
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
