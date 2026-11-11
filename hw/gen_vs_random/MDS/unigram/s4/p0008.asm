.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and dil, 125
cmovnle rdi, rdx
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
or dil, -71
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and al, 20 # instrumentation
cmovp di, bx
and al, -103 # instrumentation
cmovns eax, eax
and dl, 119 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
and eax, ebx
and dil, -62
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 55
test al, al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 8
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
or cx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
