.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
cmovle ecx, edi
cmovl rsi, rbx
or al, -8
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 47
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 73
cmovl edi, edi
and cl, -109 # instrumentation
cmovns rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
cmovnb rax, rsi
jmp .bb_0.1
.bb_0.1:
and cl, 8
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
cmovnp di, dx
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
cmovno di, si
xor rdi, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
