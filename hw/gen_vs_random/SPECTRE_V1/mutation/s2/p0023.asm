.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, di
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
not sil
lea eax, qword ptr [rdi]
xor ax, -2537
add cl, 29 # instrumentation
setnb sil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, bl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
imul edi, ebx
or sil, 3
bt bx, 27
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
