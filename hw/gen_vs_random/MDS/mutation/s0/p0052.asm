.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -39
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
cmovnb rdi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and dl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
test dl, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
test sil, dil
and si, bx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
or ax, 85
bts rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
