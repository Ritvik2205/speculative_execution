.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
xor si, -50
mov dl, -36
movzx ax, al
mul sil
cmp ax, 7046
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test ax, 636
cmovl rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovl edi, edx
jmp .bb_0.1
.bb_0.1:
add al, 104 # instrumentation
sbb rax, 1890168613
cmovo rdx, rsi
xchg bl, cl
lea si, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
jmp .bb_0.2
.bb_0.2:
add bl, -92 # instrumentation
setnz al
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmovnp si, cx
cmovl rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
