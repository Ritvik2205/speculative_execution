.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
xor rdi, rdi
cmovp edx, ebx
lea bx, qword ptr [rax + rdi]
xchg eax, edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 86
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
not si
sub dl, dil
lea bx, qword ptr [rcx + rdi]
sub bl, al
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
and rdi, -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
