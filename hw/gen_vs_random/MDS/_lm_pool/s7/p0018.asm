.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
or sil, al
xor rbx, 89
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and bl, 68
and si, -121
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
or bl, al
or dl, sil
test al, dil
xor cx, -18
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
jmp .bb_0.3
.bb_0.3:
or rax, -689609688
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
