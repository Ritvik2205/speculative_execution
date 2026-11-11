.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
bt bx, di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
bt dx, ax
and dl, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and cl, -67 # instrumentation
cmovnle rdx, rcx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and bl, 68
bt ax, si
cmovno rdx, rax
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
and rbx, 65
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
test al, sil
or si, 0b1000000000000000 # instrumentation
bsr si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
