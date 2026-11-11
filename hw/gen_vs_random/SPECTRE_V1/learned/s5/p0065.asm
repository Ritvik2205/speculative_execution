.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
sub cl, -21
lea rdx, qword ptr [rax + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
sub al, bl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 95
or al, 100
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
