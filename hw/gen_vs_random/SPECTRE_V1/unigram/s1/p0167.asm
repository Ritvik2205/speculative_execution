.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
btr dx, 95
and rdi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdi]
not esi
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
btr edi, 28
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 51
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
test dil, dl
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
movzx cx, bl
jo .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -12 # instrumentation
lea rax, qword ptr [rcx + rbx]
not ebx
neg ax
movsx rcx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
