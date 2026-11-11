.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -51
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
or al, -24
or al, al
xor rdi, -9
cmovnb rax, rcx
xor ebx, 60
cmovnbe rbx, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
cmovp edi, ebx
and al, al
cmovl rax, rdi
xor cl, 98
xor cl, 24
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
