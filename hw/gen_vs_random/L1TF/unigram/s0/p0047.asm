.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdi + rax + 36]
xchg cl, dl
adc dl, dl
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
xor sil, 64
adc sil, 98
cwde
mov ebx, 675401645
movzx ax, dil
jmp .bb_0.1
.bb_0.1:
setnb al
and ebx, -52
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
lea eax, qword ptr [rsi + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
not rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
