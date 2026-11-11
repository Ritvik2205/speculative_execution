.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
bts rbx, rax
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and dil, -39
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and dl, cl
test sil, dil
and si, bx
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
cmovnb rdi, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or ax, -4210
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
