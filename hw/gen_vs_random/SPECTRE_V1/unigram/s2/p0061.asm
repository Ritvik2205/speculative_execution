.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 19
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and al, al
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 76
add al, -127 # instrumentation
movzx eax, cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, 9
lea rdx, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xchg edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
