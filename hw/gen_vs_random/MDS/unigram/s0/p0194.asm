.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl di, si
xor rax, -773894210
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
btr ax, dx
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and dl, cl
xor rax, rsi
xor dx, 77
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and dl, 81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 90
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
cmovbe esi, edi
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
