.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
bts ecx, 3
xor bx, 51
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rdi, rdi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or bx, 63
cmovle rax, rbx
or dl, 51
or di, 40
cmovns di, dx
or rcx, 54
jmp .bb_0.1
.bb_0.1:
and cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
btr edx, ecx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 8
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and edx, -44
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
or si, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
