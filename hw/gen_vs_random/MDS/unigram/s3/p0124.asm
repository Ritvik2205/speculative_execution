.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 93
cmovb ax, ax
cmovs edi, esi
and bl, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
xor rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rsi, 70
or di, -18
and bl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and dil, 24
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
