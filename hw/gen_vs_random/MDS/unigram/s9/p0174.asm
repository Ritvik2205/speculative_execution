.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
test cl, 91
bt rsi, rcx
test cl, sil
bts edx, edx
and al, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
btr cx, dx
and sil, -75 # instrumentation
cmovp esi, esi
or edx, -78
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
test edx, -1561252782
or bl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
or eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
btr di, di
btc rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
