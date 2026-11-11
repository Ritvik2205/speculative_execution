.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 93
cmp dl, sil
add cl, -56 # instrumentation
sbb rcx, 48
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
add ebx, -116
mov cl, sil
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
lea edi, qword ptr [rcx + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
lea rdx, qword ptr [rsi + rax + 68]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
