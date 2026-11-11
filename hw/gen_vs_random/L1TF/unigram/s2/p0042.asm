.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx di, cl
movsx edx, bl
lea ax, qword ptr [rax + rdi + 60]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
mov dl, 89
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
jmp .bb_0.1
.bb_0.1:
add cl, 115 # instrumentation
lea ebx, qword ptr [rbx + rcx]
not rdx
add cl, 107 # instrumentation
cmovnl dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
add bl, 104 # instrumentation
mov ebx, 9
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
