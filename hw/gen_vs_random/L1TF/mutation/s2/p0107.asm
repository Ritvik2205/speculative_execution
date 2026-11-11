.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
bswap rax
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
movzx ecx, sil
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
add bl, -53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
sub dl, bl
lea si, qword ptr [rax]
lea edi, qword ptr [rdx + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 103
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
add dl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
lea edx, qword ptr [rdi + rbx + 38925]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sub di, 10
movsx rsi, cl
setp al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
