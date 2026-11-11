.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, dl
xor rdi, rdx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rcx
lea rdx, qword ptr [rdx]
setz al
sub ax, -27107
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 54
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
movzx rsi, al
sub rax, -2089384489
test ecx, 82
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 71
setnl al
adc al, -103
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
