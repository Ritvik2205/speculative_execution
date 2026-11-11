.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea dx, qword ptr [rbx + rax + 20]
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
imul bl
imul bl
and bx, ax
bt esi, edi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 13
add bl, 36 # instrumentation
setnl sil
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
cmovno rsi, rdi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
