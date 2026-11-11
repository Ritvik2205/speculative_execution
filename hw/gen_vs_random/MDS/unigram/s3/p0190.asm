.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 26
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 33
and cx, si
or dl, al
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
or bl, bl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovs edx, edx
and dl, -1 # instrumentation
cmovnb ax, cx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and cl, al
and ax, bx
or ebx, 70
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
bt ax, di
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
