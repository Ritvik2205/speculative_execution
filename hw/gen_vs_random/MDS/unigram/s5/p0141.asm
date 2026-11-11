.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dil
and dl, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
bts ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
test cl, 101
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovnbe rcx, rdx
cmovno rcx, rcx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
or rcx, 54
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
or bl, 13
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
