.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -76 # instrumentation
cmovl cx, ax
and dl, -41 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
xor dil, al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
cmovz rdx, rcx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 40
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 71
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rbx]
test eax, 1729060510
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
jmp .bb_0.1
.bb_0.1:
and al, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovs edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and al, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
