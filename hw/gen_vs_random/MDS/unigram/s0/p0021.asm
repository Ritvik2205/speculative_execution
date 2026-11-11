.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl di, ax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
btc ebx, esi
btr si, 208
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmovp ax, si
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
btr rax, 56
test al, al
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
cmovno rax, rdx
cmovbe ax, si
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
