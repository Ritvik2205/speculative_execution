.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
cmovo rbx, rax
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
cmovnp ebx, edi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
bts edi, eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
xor al, -15
cmovo edi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
test rdx, -1624442902
cmovnz di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
