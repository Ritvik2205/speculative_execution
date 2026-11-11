.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
or di, 0b1000000000000000 # instrumentation
bsf di, di
and dl, 84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 64
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
cmovl rax, rdi
jmp .bb_0.1
.bb_0.1:
and si, 10
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and al, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 58
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
