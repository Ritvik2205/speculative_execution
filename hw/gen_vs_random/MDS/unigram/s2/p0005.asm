.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns ebx, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
or eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rsi, rsi
and dl, cl
cmovns si, cx
jmp .bb_0.1
.bb_0.1:
bt edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and esi, 52
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and dl, 84 # instrumentation
cmovle ax, si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 47
xor edi, 80
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
