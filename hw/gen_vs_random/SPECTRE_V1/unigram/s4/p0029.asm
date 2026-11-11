.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
lea eax, qword ptr [rdx]
imul si, cx, 63
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
sbb ecx, 99
and dx, 21
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setle dil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
sbb al, cl
movsx dx, dil
or dx, 59
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
mov eax, ebx
btr bx, ax
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
