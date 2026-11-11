.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
or bl, 114
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test al, -82
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
cmovb ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
