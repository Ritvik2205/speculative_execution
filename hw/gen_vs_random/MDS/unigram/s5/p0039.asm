.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovnz eax, eax
and bl, -74 # instrumentation
cmovns ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
test bx, 4954
cmovnp rbx, rcx
cmovnle rax, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsf ax, si
or ax, 127
and bl, -34 # instrumentation
cmovs rax, rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
xor bl, sil
cmovno bx, bx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 11
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
bt edi, 225
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
