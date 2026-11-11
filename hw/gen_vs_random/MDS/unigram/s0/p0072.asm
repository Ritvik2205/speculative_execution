.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 38 # instrumentation
cmovbe edx, eax
or bl, dil
and rax, 1250429750
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
cmovnb rax, rdx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and dl, dil
not dil
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
cmovns ecx, esi
and ax, si
test dl, -95
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and sil, 32 # instrumentation
cmovnbe esi, edx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
