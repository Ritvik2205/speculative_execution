.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
or ax, 30524
btr rsi, 207
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor dil, 81
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
not al
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
jmp .bb_0.1
.bb_0.1:
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
cmovnb rdi, rdi
test dl, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or ax, 85
and dil, -62
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and dl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
bts rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and si, bx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
