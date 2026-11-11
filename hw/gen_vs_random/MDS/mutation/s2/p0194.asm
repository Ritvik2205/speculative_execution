.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
test ax, 6779
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovp edx, ecx
and al, 87
btc rax, 110
btr dx, cx
or rdx, -48
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
cmovnle edi, ecx
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
cmovns rsi, rax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
xor sil, -14
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
cmovnp edx, eax
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
