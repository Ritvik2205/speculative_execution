.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
bts edx, 189
and al, dil
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
and sil, -103 # instrumentation
cmovbe si, si
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
jmp .bb_0.1
.bb_0.1:
xor esi, 10
bts rax, rbx
and al, 23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
btr rax, 56
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovl rbx, rdx
cmovns rdx, rbx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
