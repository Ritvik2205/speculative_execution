.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
xor ax, 31969
xor rax, -1499464454
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
xor di, 40
test al, bl
bt ax, cx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and dil, -39
jmp .bb_0.2
.bb_0.2:
xor di, -83
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
or dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
jmp .bb_0.3
.bb_0.3:
cmovnp rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
bt di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
