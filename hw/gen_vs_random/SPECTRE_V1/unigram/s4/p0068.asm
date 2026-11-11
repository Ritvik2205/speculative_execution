.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
sbb cl, 105
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -5 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
bt bx, 34
setbe al
mul cx
cmovnbe ax, di
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
