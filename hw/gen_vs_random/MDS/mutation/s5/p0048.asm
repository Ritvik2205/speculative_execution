.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, -1561252782
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
bts rax, 77
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
btr rbx, 193
btr edi, esi
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
not edx
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
test bl, -14
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
and al, -53 # instrumentation
cmovbe edi, eax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
