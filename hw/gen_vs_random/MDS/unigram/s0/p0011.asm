.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
and al, -68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
xor edi, 38
xor al, -4
and bl, 33 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and dl, 120 # instrumentation
cmovnz edx, ebx
and sil, sil
or bl, dl
and cl, -44 # instrumentation
cmovno rax, rsi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
or rdx, rax
test dl, 27
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
btr rdi, 129
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
