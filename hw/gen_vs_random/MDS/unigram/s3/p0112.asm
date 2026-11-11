.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
or rdx, rbx
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
and bx, 89
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rcx, 107
bts esi, 61
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
test al, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and edx, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
