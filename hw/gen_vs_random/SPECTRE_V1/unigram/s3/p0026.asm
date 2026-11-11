.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
btr di, 13
test cl, bl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
cmovs cx, di
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
setbe bl
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
xchg dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
