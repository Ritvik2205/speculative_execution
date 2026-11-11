.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
or al, 100
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 83 # instrumentation
setbe al
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
add eax, 1938514106
sbb al, cl
cmovz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -77
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add al, -46 # instrumentation
cmovbe rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
cmovbe ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
xor edx, eax
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
mov al, -28
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
