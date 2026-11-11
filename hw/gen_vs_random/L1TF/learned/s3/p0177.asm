.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor cl, 89
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or cl, bl
and cl, 46
btc cx, ax
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rsi]
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
