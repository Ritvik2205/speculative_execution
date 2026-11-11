.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
cmovs si, bx
add esi, 95
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovbe dx, cx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
cmovs rax, rax
inc rcx
lea ecx, qword ptr [rbx + rax]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
adc sil, -77
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
cmovnle bx, di
cmovle di, ax
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
lea edx, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
