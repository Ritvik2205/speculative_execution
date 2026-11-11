.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
test di, si
or al, -2
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
cmovb dx, bx
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
add cl, dl
bts ecx, 164
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
cmovz esi, ebx
cmp rax, 834498504
sbb ebx, 9
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
lea bx, qword ptr [rsi + rsi + 53131]
jmp .bb_0.1
.bb_0.1:
cmp esi, 110
lea edx, qword ptr [rsi + rsi]
setnbe cl
xor ax, 27703
or eax, -401020526
lea di, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
