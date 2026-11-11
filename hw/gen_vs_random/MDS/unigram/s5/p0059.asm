.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
cmovz ebx, ebx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
bts cx, dx
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
not rax
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
cmovo rcx, rdx
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
bts edi, 248
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
or al, cl
test rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and cl, 8 # instrumentation
cmovnl rax, rsi
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
