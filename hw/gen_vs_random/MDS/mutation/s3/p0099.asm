.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
cmovo rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
cmovnp ebx, edi
jmp .bb_0.1
.bb_0.1:
cmovnz di, di
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
cmovo edi, ecx
xor al, -119
test rdx, -1624442902
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
bts edi, eax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
