.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb dx, bx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
test di, si
add cl, dl
sbb ebx, 9
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
bts ecx, 164
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
cmovz esi, ebx
lea bx, qword ptr [rsi + rsi + 53131]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
or al, -2
cmp rax, 16650668
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
