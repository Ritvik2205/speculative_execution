.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb dx, bx
test di, si
cmp rax, 921820217
add cl, dl
lea bx, qword ptr [rsi + rsi + 53131]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sbb ebx, 9
cmovz esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
or al, -57
bts ecx, 164
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
