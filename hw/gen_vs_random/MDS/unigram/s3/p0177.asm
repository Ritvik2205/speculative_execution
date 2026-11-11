.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
cmovs eax, eax
cmovnz dx, di
xor esi, 83
btr si, 90
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
or rdi, rcx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 81
jmp .bb_0.1
.bb_0.1:
and cx, ax
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
or ax, 6575
and bl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and cl, 85 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and dl, -1 # instrumentation
cmovnb ax, bx
xor bl, 2
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
