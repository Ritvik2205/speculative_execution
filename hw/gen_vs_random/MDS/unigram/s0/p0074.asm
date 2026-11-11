.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdx, 54
and dx, 60
and cl, -49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
test ecx, -1843375753
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
test dil, al
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
test cx, 401
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
btr cx, dx
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
test ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
