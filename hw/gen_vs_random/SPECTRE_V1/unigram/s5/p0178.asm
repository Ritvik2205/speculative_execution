.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
add cl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovp bx, dx
sbb dil, -106
sub dl, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 56
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
cmovnl ecx, esi
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
lea rcx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
