.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
or si, 5
sub bl, al
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax
btr rdi, rbx
sub bl, -6
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
or rbx, rbx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
movsx ax, cl
or ebx, edx
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
