.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 31571
lea ecx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
or sil, -5
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
xor rax, -68
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
not ebx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 52
jmp .bb_0.1
.bb_0.1:
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
mov dl, cl
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
