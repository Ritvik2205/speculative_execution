.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rcx
lea ax, qword ptr [rsi + rax + 56494]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 70
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
sub dx, di
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
or sil, sil
add dl, cl
test rdx, rdi
add al, 121 # instrumentation
setnb cl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
cmp ecx, 10
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
sub ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
