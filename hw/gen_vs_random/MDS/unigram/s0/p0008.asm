.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -36
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
cmovb rdi, rdi
and al, 54 # instrumentation
cmovnp ax, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and al, 2 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and dil, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
xor di, -83
cmovp si, ax
and al, al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rsi]
xor rbx, 89
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
or dl, bl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
