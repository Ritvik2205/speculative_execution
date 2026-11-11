.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
or dil, -76
xor sil, al
cmovle bx, dx
xor bl, al
and ecx, -104
and dl, 8 # instrumentation
cmovz rbx, rdx
and cl, 91 # instrumentation
cmovle rax, rax
and al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
cmovnbe ecx, ecx
btr cx, 9
bts ebx, 205
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], dx
and rsi, 89
and al, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and dl, -27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
and bl, 26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and dl, -127 # instrumentation
cmovno edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
