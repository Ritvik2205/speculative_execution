.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ebx, eax
and sil, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
or al, 74
cmovl edi, esi
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and dl, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and bl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
bts esi, 82
cmovb eax, ecx
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
