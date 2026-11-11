.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb eax, ecx
and dl, 110 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
or bx, 87
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
or ecx, 11
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 62
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
cmovns edi, esi
or bl, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and bl, 91
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 30
cmovnz rdi, rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
