.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc edx, 6
sub bl, -96
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
add dl, 120 # instrumentation
adc sil, 25
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
add dl, 65 # instrumentation
cmovo rdx, rbx
add dl, 55 # instrumentation
lea edx, qword ptr [rbx + rsi + 35]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
imul dl
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
lea rdi, qword ptr [rcx + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
sub ax, -27107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
