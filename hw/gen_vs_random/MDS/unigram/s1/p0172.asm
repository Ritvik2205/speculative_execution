.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 16
or rbx, -124
cmovnb esi, esi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rbx], dx
and dil, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
cmovnb rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 80
btc rcx, rsi
and al, -49 # instrumentation
cmovno ax, cx
test bl, al
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
cmovle rbx, rdx
cmovnbe dx, si
xor sil, 64
bts eax, 103
btc eax, 75
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 88
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
cmovl rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
