.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, -1843375753
and dl, -59 # instrumentation
cmovbe ax, cx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
test di, 65
and dil, bl
btr edi, edx
and cl, 49 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
or rax, 302048971
btc si, ax
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and bl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
test dl, -95
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
or eax, 678817098
or cl, cl
or dil, sil
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
cmovbe ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
