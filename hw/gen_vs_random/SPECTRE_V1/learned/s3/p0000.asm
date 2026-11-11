.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmp al, cl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
mov bl, bl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dil
mul dil
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
