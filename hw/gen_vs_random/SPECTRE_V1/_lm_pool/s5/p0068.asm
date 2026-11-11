.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, bx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp ecx, 8
or rax, -1571963467
cmp ecx, 66
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rdi]
lea rbx, qword ptr [rdi + rcx + 75]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
