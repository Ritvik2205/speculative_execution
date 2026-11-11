.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 109
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
cmovs edx, ecx
and di, si
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
cmovz si, di
test al, -59
btr rdx, 194
cmovnbe ax, bx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
