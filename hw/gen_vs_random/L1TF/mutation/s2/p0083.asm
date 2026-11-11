.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
movzx ecx, sil
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
add cl, -34 # instrumentation
setl dl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
bswap rax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 103
lea si, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
lea edi, qword ptr [rdx + rax]
add bl, -53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
