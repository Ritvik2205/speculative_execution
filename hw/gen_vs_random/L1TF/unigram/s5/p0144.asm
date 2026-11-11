.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dx, 88
mov rdi, 78
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
add ebx, ecx
cmp sil, -11
test ax, ax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
movzx rdx, dx
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
sbb dil, 96
add cl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
lea rax, qword ptr [rdx]
mov edi, eax
lea edx, qword ptr [rdi + rbx + 85]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
