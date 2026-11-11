.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmp dl, cl
movzx di, dl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 9
add sil, -61
add bx, 9
test bl, 84
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
bt ecx, esi
add cl, -72 # instrumentation
cmovp edx, edx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
setno bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
