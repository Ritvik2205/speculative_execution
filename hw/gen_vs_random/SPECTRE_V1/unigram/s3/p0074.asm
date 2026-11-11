.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdi
setnz sil
sbb cl, -122
cmovl cx, dx
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 72
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 26
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdx]
add bl, -107 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
cmp cx, 79
add bl, -41 # instrumentation
xchg al, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 96
add cl, 32 # instrumentation
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
