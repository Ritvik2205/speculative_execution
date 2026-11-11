.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
bt rcx, rbx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 72
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
xor dil, dl
cmovb rbx, rdx
and al, bl
bt eax, 4
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
or al, -8
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
xor al, sil
and sil, -2 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
bt ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
or rdi, rdx
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
