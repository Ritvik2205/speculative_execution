.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
bt ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
btr ax, 193
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 64
or sil, -49
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and al, -14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
test rdx, rbx
xor rsi, rcx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 75
xor rdx, -59
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test eax, 1838539683
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
