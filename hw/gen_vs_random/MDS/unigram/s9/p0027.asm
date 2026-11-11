.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
bts edi, eax
or bl, 43
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
cmovb edx, ebx
btr edi, 221
xor al, bl
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
jmp .bb_0.1
.bb_0.1:
bt rsi, rax
test eax, -571234566
xor bl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
cmovno ax, dx
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
