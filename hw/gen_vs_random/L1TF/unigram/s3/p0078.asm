.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx si, dil
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
movzx ecx, dl
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
cmovs di, ax
add bl, -37 # instrumentation
dec al
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
test ebx, 73
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
bts ecx, eax
add dl, 78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
