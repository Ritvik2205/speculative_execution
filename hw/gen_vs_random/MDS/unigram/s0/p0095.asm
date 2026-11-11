.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
xor cl, 83
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
btr rax, 209
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
test dx, 16353
btc rdx, rdx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 28
or cx, 39
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
xor rbx, 89
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
