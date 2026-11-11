.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and al, -64 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 82
not edi
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 81
xor ecx, ecx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovnle rdi, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
cmovnle rdx, rsi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
cmovp rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
