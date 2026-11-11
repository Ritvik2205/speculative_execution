.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 35
or al, dl
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
or sil, -44
jmp .bb_0.2
.bb_0.2:
add dl, -52 # instrumentation
adc dx, 13
jmp .bb_0.3
.bb_0.3:
add cl, 89 # instrumentation
adc bl, al
or al, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
test dl, dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
test bl, cl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
