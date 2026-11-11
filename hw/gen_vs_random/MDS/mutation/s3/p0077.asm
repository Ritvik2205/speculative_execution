.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
xor rax, 459999114
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
cmovnz eax, esi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
or dl, sil
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
btr si, 208
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and al, -55
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
or bl, al
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
cmovnbe rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
