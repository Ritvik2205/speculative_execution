.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, sil
lea ax, qword ptr [rbx + rdx + 1]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
test di, 88
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
cmp edx, 99
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
add al, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
movzx ecx, cx
lea dx, qword ptr [rsi + rdx + 10]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
