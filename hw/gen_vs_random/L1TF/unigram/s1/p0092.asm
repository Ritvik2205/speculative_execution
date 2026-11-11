.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rsi, rdi
add cl, -20
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and dil, 58
cmp ax, -31327
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
sub al, -75
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
sub al, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], dx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and dl, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
