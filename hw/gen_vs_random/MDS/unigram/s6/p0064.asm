.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and bl, 49 # instrumentation
cmovbe rdx, rax
cmovnz rax, rsi
and bl, -103 # instrumentation
cmovbe bx, bx
btc si, 99
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 92
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
cmovno si, di
test bl, bl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
xor di, 93
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
xor eax, 984871847
cmovbe rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
cmovns cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
