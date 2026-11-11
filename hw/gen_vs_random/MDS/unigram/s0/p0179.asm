.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
bts ecx, 61
cmovnle rcx, rdx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
test rdi, 65
cmovno bx, si
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
jmp .bb_0.1
.bb_0.1:
cmovnl rax, rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and cl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
xor dl, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
xor dil, dl
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
or rax, -2043376621
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
xor al, 77
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
