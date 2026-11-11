.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
setl bl
adc edi, 37
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
cmp dil, -78
cmp rsi, 53
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 51
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 53
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
