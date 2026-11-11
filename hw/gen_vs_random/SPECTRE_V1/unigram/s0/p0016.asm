.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 70
bt edi, 33
sub sil, dl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], di
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
adc dil, dl
sub rax, -679751639
xor dl, dl
xor rcx, 47
lea eax, qword ptr [rsi + rbx + 15]
mov bl, al
add dl, 35 # instrumentation
cmovnz rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
