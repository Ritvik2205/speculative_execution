.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rsi, 206
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
cmovno rdi, rdx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
test bl, -9
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
cmovnbe ax, di
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
and dl, 125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
cmovnz ecx, edi
bt eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
