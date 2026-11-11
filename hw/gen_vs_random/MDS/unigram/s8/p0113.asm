.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -67 # instrumentation
cmovnle rsi, rdx
cmovle dx, ax
cmovns ax, bx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 48
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
or edx, -1
and bl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 38
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
cmovb di, si
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
xor rbx, 89
xor ax, -1005
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 50
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
