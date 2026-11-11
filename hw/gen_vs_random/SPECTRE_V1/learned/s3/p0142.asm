.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
btr di, 188
mov bl, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
mov al, al
cmp ax, 23607
or al, al
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
bt ecx, 198
test rax, -1704969603
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test ecx, -1134698714
add cl, -82 # instrumentation
sbb si, cx
or sil, -27
test dil, 18
cmovp esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
