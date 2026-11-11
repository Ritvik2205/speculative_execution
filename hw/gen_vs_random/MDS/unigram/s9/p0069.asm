.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
cmovz bx, dx
cmovb di, di
xor di, -83
and bl, 121 # instrumentation
bt rbx, 97
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
and dil, bl
jmp .bb_0.1
.bb_0.1:
or al, 30
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 52
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
or rax, 302048971
and dl, 53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
bt rsi, 4
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
