.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
cmovbe rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
or edi, edi
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and cl, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and ax, 27170
or ax, ax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
or edx, eax
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 60
or rcx, rdi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
