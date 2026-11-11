.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
bts rax, 85
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
adc edi, 67
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor dil, -37
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
btc bx, si
add al, 103 # instrumentation
cmovno esi, eax
cmp di, ax
xor rsi, 3
lea rdx, qword ptr [rbx + rax]
inc ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
