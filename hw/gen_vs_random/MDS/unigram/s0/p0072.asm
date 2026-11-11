.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe si, ax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
and cx, si
xor dx, 53
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and cl, 122 # instrumentation
cmovnb rcx, rdi
bts ax, cx
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
bts ax, dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 74
and dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
btr rbx, 96
cmovs ecx, edi
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
cmovnp edi, esi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 88
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 100
or cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
