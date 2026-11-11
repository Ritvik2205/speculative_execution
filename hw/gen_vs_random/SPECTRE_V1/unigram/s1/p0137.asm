.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 68
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -93 # instrumentation
not rdx
neg eax
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdi
btr cx, ax
mov sil, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 39
imul edx, eax, 87
or dx, bx
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], esi
inc al
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
