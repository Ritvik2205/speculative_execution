.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, 104
test al, 127
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
cmovbe edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
bts edx, 189
xor al, -19
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
and rcx, rdx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
and bl, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
xor rax, -1657511731
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
cmovp si, dx
or ebx, -104
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
