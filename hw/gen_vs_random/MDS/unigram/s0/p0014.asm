.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
xor rsi, -117
cmovb rdx, rdi
and bl, 3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and bl, 66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
not dl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
cmovs ax, ax
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rcx, rcx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 6
and rax, rdi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
