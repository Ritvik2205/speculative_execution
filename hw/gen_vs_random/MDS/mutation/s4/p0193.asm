.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
cmovo rbx, rax
cmovnp ebx, edi
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
jmp .bb_0.1
.bb_0.1:
cmovo edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
xor al, 77
test rdx, -1624442902
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
bts edi, eax
cmovnz di, di
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
