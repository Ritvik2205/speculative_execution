.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
test cx, 401
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 40
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 31
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
bt si, 23
cmovl rax, rax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and dl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
or dx, 125
and rax, -2039117613
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
