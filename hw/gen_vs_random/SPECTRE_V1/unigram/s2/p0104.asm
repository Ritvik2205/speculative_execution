.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 97
movsx rsi, dl
lea di, qword ptr [rsi + rsi]
bts rsi, 234
movsx rbx, al
cmp ax, 23607
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, bl
bts rcx, 3
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 31
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
cmp edi, 85
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
cmovb bx, bx
setns dl
sub dl, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
