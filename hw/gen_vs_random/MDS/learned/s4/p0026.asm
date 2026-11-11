.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
or al, 24
xor cx, -18
or al, 25
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
or dl, cl
test sil, cl
and sil, sil
or ax, 85
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
