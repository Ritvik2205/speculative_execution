.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and cl, bl
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 32
bts rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
bts cx, bx
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
jmp .bb_0.1
.bb_0.1:
and bl, 76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
or eax, -1642752131
bt rdx, rdx
xor cl, -79
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 23
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
xor eax, eax
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
