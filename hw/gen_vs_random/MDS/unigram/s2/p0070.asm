.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
cmovnbe edi, ecx
or rcx, rdx
btc eax, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmovb ecx, esi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 18
cmovno si, ax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 43
bt cx, 22
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
