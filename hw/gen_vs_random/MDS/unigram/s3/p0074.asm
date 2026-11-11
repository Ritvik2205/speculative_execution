.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
xor sil, -15
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
test rsi, rbx
and al, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or sil, -49
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and dil, dl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
and ebx, 65
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
