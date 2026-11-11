.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
add rax, 909978580
cmovno ax, dx
sbb eax, -1165635662
and al, -68
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 13
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 86
cmp dl, -56
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
adc sil, 45
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
