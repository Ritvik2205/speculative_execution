.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 94
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
imul rbx, rcx
mov rdi, 35
lea edi, qword ptr [rsi]
xor bl, bl
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 79
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
lea ebx, qword ptr [rdx + rdi + 31]
sub al, -47
btc esi, esi
lea ecx, qword ptr [rdi + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
