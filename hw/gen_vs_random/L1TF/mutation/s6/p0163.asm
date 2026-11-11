.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 108211639
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
or al, -5
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
bts ecx, 164
cmovz esi, ebx
lea bx, qword ptr [rsi + rsi + 53131]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
cmovb dx, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test di, si
sbb ebx, 9
add cl, dl
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
