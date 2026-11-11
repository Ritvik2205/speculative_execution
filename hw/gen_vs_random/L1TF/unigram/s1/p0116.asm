.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
mov cl, dil
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
imul rbx, rcx
mov rdi, 19
lea edi, qword ptr [rsi]
xor bl, bl
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
lea ebx, qword ptr [rdx + rcx + 56]
sub al, -97
btc esi, esi
lea ecx, qword ptr [rdi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
