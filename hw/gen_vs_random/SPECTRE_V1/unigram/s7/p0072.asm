.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
add ax, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rsi, rax
lea rax, qword ptr [rbx + rbx + 18]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
imul edx
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
add cl, 43 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 63
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
inc al
or al, dl
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 34
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
