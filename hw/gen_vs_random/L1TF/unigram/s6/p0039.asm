.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rax + rax]
lea si, qword ptr [rsi + rdx + 44163]
cmovp di, dx
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
cmovbe rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
lea rax, qword ptr [rcx + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
or ax, 11821
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
test dil, cl
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
cmovb bx, ax
add dl, -103 # instrumentation
cmovnz dx, cx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 12
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
