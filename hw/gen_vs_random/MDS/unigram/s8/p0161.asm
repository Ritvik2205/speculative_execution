.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and al, dl
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
not dil
and dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and cl, 7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
cmovnz ecx, ebx
or bl, cl
cmovo ecx, edi
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and ecx, -104
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
