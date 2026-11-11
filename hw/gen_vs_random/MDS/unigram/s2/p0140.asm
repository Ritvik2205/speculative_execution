.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dl
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
cmovs eax, ebx
test rbx, 19
cmovnbe eax, eax
btr ecx, edx
btr di, di
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
test cl, -123
bts si, 158
and dl, 119 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and ax, si
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
btc ax, si
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
xor rcx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 70
btr cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
