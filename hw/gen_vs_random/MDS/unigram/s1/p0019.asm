.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rax, rsi
and bl, 76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
cmovnl eax, ebx
bt edx, edx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
btc rsi, 30
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and dl, -33 # instrumentation
cmovns rcx, rcx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 99
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 74
cmovp di, di
not al
xor dl, al
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
test sil, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
