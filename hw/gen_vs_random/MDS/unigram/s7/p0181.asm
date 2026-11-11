.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rax, rsi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
bt edi, eax
test edx, -1561252782
and dl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
cmovnz ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and dl, dl
cmovz di, di
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
xor edx, -13
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovno rax, rdi
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
test al, -81
or dl, dl
and cl, 122 # instrumentation
cmovl esi, esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
