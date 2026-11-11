.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 155
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
not edx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
test bl, -9
and al, -53 # instrumentation
cmovbe edi, eax
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
btr edi, esi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
