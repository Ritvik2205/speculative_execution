.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 56
lea si, qword ptr [rbx + rcx + 43]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
test dx, cx
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
movsx eax, al
lea dx, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
loope .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, bl
lea cx, qword ptr [rdx + rax]
lea ax, qword ptr [rax + rax]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
sbb al, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
