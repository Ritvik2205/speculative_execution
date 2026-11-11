.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, -34
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
or bl, -5
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
sub sil, -99
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], ax
add bl, -22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
sub dil, 87
add dl, 126 # instrumentation
setnb dil
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
lea cx, qword ptr [rdi + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
setnp bl
adc dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
