.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
add al, -37 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
xor dl, dl
sub bl, -96
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
cmovo rcx, rcx
and al, al
jmp .bb_0.1
.bb_0.1:
xor ax, 34
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
lea ebx, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
sub sil, dil
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 63
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
