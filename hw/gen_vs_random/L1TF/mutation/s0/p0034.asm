.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rsi + rsi + 53131]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
bts ecx, 225
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
cmp rax, 834498504
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
add cl, dl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
cmovb dx, bx
test di, si
cmovz esi, ebx
or al, -57
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
sbb ebx, -116
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
