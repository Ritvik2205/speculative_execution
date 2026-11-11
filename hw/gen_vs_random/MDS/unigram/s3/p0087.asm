.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rbx, rcx
and bl, 2
cmovb rbx, rcx
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovnb ax, ax
or rsi, rcx
xor al, 78
jmp .bb_0.1
.bb_0.1:
cmovno eax, ecx
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 15
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 69
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
xor dl, -68
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
