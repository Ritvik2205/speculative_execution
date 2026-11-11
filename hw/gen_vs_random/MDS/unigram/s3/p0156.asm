.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle edx, eax
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and cx, 69
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 91
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
or al, dl
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
bt ecx, ecx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
and dl, 107 # instrumentation
cmovs ecx, esi
and cl, -109 # instrumentation
cmovns rcx, rcx
xor edx, edx
btr dx, 27
and cl, al
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
and dl, -18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
