.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
cmovo edx, edx
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
test cl, 54
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovle ebx, eax
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 47
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
cmovs si, di
xor rax, -345061362
xor bl, 67
cmovnp rsi, rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], bx
and dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and dl, 21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
