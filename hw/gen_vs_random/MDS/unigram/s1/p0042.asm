.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, cl
and al, 75
and al, -68 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
xor cl, -13
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, rdi
and rdi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdi]
or bl, -125
and rdx, 3
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
or rsi, 35
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
or eax, 359647041
or cl, 6
cmovnz rdx, rax
not cl
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
