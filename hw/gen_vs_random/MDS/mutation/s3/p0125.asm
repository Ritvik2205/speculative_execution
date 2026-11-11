.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
bts rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or ax, -4210
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
cmovnb rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and dl, cl
and si, bx
test sil, dil
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and dil, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
