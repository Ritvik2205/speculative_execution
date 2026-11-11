.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
jmp .bb_0.1
.bb_0.1:
or ecx, edi
or dl, 85
and cl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and dil, 125
jmp .bb_0.2
.bb_0.2:
test al, -81
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or bl, cl
and sil, -9
or sil, -49
and esi, 86
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
