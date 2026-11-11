.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
add ax, 8031
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
cmovnle rsi, rbx
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
lea dx, qword ptr [rbx + rbx + 81]
sub ax, -15315
add bl, 39 # instrumentation
cmovo eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
