.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
xor cl, 24
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 21
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
cmovnz ebx, eax
and bl, 108 # instrumentation
cmovns rcx, rcx
btc rcx, rax
xor dil, 8
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and bl, 108 # instrumentation
cmovns rbx, rbx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
cmovnbe rdi, rsi
btr ecx, edi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
