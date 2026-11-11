.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdx, 72
cmovnbe rbx, rcx
or bl, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
bt bx, di
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
and dl, 48 # instrumentation
cmovz rsi, rdx
xor cl, 55
test bl, 65
xor rsi, -117
and bl, 108 # instrumentation
cmovns rax, rax
and cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and dl, -73
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
cmovz rdx, rsi
and bl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
or bl, -52
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
