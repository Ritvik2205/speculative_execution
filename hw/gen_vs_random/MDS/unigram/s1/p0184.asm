.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 63
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
cmovb di, di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
cmovbe bx, bx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
cmovns esi, eax
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
not ax
or al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
