.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and bl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
bts dx, 50
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and al, al
jmp .bb_0.1
.bb_0.1:
xor dil, -70
bts di, 73
and edi, ebx
test bx, 4954
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
xor ebx, ebx
bts rsi, 205
btc si, 99
btr rbx, rdi
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
