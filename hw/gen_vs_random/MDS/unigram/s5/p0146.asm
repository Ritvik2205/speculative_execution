.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, sil
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovle rdi, rcx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
cmovz bx, cx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rdx, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 68
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
or si, 94
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
