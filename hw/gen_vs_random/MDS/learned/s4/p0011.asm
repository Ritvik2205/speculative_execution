.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and al, dl
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or al, cl
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
cmovnz ax, di
cmovp cx, di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
cmp ax, 2
and si, di
mov cl, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
bt bx, 73
cmovz ecx, ebx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 71
or si, 49
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
