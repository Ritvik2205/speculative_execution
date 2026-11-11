.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
bts rbx, rbx
and cl, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
bt ebx, edx
cmovnz ax, ax
test rax, 1732677821
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 17
bt rdx, 55
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovno eax, edx
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
btc rcx, rsi
and al, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
and ax, dx
or al, dil
and al, -38 # instrumentation
cmovp rax, rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
