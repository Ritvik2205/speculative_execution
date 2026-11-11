.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
sub al, al
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 63
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
or dl, 41
btr di, cx
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
bt ecx, edx
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
movzx ecx, dl
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
