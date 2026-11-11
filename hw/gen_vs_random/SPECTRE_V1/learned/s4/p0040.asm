.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
setnb sil
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rsi], ax
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
add al, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
or ecx, edi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 642565565
setno al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 67
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or cl, dl
bt rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
