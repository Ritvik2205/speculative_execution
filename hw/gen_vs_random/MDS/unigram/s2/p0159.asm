.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
cmovno rcx, rcx
cmovnb rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
or sil, sil
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
xor bl, al
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
or al, al
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
or bl, 43
btr eax, eax
bt dx, 228
xor cl, 98
and cl, -44 # instrumentation
cmovno rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
