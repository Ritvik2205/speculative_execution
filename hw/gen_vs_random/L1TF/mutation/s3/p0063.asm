.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
sbb ebx, -116
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
cmovz esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test di, si
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
cmovb dx, bx
add cl, dl
bts ecx, 225
cmp rax, 921820217
lea bx, qword ptr [rsi + rsi + 53131]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
