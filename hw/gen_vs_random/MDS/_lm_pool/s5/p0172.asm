.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
or bl, dil
btc si, 43
test rax, 1978892575
jmp .bb_0.1
.bb_0.1:
bt eax, edi
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
btc cx, 115
xor dl, 34
bts rcx, rsi
or dl, bl
xor cx, -18
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
xor al, 99
bt di, dx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor bl, -27
jmp .bb_0.2
.bb_0.2:
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
