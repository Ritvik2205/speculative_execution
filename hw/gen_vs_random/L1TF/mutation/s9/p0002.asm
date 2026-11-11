.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edx, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
cwde
cdq
lea rcx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
cmovb ebx, edi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
test di, si
or al, -5
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
cmp rax, 108211639
sbb ebx, -116
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
lea bx, qword ptr [rsi + rsi + 53131]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
