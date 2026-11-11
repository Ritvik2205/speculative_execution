.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 97
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rdx + 16]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
or si, -97
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
xor dl, dil
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
