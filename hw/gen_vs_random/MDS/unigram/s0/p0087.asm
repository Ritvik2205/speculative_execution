.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 3
and ax, 19740
and dl, 97 # instrumentation
cmovnp dx, ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 15
or ax, -6817
or cl, dil
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
xor rcx, 71
cmovs rcx, rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rbx, 65
test cl, 62
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 45
or edx, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
