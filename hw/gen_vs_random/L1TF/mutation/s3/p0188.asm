.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and esi, eax
add di, 82
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 91
cmovl rdx, rdx
sbb bl, al
bt rsi, rcx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and al, -111
mov si, 20858
btr cx, si
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
