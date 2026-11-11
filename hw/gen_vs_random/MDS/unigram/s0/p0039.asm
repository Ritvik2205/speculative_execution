.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, al
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
xor ax, -6793
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, sil
cmovo rax, rsi
btr rdx, 25
test cl, dil
btr eax, 51
test sil, bl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
test eax, ebx
and dl, -73
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
btr rdx, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
