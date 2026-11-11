.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
test al, -84
movzx esi, si
test dil, -126
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
jmp .bb_0.1
.bb_0.1:
btr edx, 7
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
btr rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
xchg al, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
