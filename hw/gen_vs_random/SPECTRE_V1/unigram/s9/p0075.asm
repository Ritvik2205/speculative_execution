.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
lea di, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, bl
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
sub dl, 96
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
bt ax, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
