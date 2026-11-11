.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
or sil, al
test cx, bx
xor ax, -5889
or dil, al
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
or dl, -97
test dil, dl
jmp .bb_0.1
.bb_0.1:
and dl, 125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
bt dx, di
and dil, -62
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and bx, 12
bts rbx, rdi
cmovs rcx, rdx
bt edx, 66
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
