.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, dx
xor dl, cl
and ax, -22368
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
xor dx, 93
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 21
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
not ebx
jmp .bb_0.1
.bb_0.1:
or si, 4
and bl, al
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
xor si, ax
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 14
bt rdi, rax
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 65
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
cmovle edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
