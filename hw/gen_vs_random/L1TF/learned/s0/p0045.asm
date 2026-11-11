.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
add bl, 91
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
btr ecx, ebx
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and eax, esi
add cl, -103 # instrumentation
cmovnl rbx, rdx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 41
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
add dil, 60
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
mov al, sil
bt ax, 33
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 52
sub esi, edx
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
