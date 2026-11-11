.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
test di, si
cmp rax, 1138518729
cmovb dx, bx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
sbb ebx, 9
lea bx, qword ptr [rsi + rsi + 53131]
cmovz esi, ebx
or al, -57
bts ecx, 225
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
add cl, dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
