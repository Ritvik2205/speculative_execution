.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -43 # instrumentation
adc di, 12
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 91
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 12
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor ecx, eax
cmovp rax, rdx
and al, sil
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
xchg dl, dl
neg rdx
setle dl
lea rdx, qword ptr [rax + rbx + 97]
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
