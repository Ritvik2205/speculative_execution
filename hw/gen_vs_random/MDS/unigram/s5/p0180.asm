.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, 115
and cl, -71
or eax, edi
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
or bl, dil
cmovbe esi, ebx
and dx, 60
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rsi, 88
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
xor dil, -3
and sil, -34 # instrumentation
cmovs rdi, rsi
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
cmovp ax, si
and dl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
