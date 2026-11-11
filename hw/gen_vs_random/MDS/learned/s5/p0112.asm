.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, dx
and dil, -62
test eax, -571234566
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
or al, cl
or sil, -78
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
test dil, -80
or ax, -23697
and bl, sil
xor rcx, 71
jmp .bb_0.2
.bb_0.2:
test al, cl
and dil, -39
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and sil, bl
xor ax, -6793
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
