.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
bts ax, di
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
test rcx, -613256812
bt cx, si
and dl, 1 # instrumentation
cmovl cx, ax
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
test cx, 401
or al, -61
jmp .bb_0.1
.bb_0.1:
and dl, 53 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and dl, -73
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or bl, 13
xor rax, -1657511731
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
and bl, 120 # instrumentation
cmovnle edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
