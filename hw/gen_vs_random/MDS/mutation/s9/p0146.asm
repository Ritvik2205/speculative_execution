.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
xor al, 115
or ebx, -104
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
bts edx, 189
or rdi, 21
xor rax, -404206377
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
cmovbe edx, esi
btc bx, 58
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
test al, 91
and rcx, rdx
and bl, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
cmovp si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
