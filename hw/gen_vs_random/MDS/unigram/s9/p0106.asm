.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or rsi, 33
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and cl, -13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
cmovz bx, si
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and bl, al
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
and cx, -2
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
bt ebx, 79
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
bt edi, 225
and al, al
bt edx, ebx
xor sil, -126
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
