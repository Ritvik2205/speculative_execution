.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
test bl, 106
cmovle rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
or al, -48
and cl, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
or bl, dil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 69
test dl, 25
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and bl, -66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
cmovle esi, ecx
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
