.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, rbx
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmovnbe ax, cx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edx
btr edi, ebx
add sil, -117 # instrumentation
lea rbx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
or bl, 61
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
setp sil
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
sbb cl, sil
cmovnle rsi, rsi
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
