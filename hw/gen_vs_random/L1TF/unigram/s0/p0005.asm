.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], edx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 62
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dil
cmovs rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
add al, -21 # instrumentation
mov ecx, ebx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
xor esi, eax
lea rdx, qword ptr [rax]
bt bx, 96
cmp rcx, rbx
setl bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
