.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
xchg eax, ecx
sub al, dl
and rax, -1128038253
sub bl, dil
lea bx, qword ptr [rdi + rax]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub dil, al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
