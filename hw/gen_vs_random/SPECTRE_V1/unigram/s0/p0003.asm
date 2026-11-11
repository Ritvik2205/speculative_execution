.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 57
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 24
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
add dil, -46 # instrumentation
cmovbe rdi, rbx
xor edi, eax
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
sbb ebx, ecx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
