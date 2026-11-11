.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz dil
cmp sil, al
add bl, -77 # instrumentation
cmovns bx, cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
test rax, rcx
cmovbe bx, bx
add sil, 21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
sbb bl, cl
add dl, 109 # instrumentation
cmovnb rbx, rdi
lea dx, qword ptr [rdx]
inc rsi
sub al, bl
setnb dl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
