.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
setnle al
cmovnb rbx, rdi
sbb sil, al
add bl, -92 # instrumentation
cmovs di, si
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
neg edi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
imul rdx
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
