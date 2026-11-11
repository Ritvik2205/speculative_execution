.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea bx, qword ptr [rdi + rdx]
adc cx, -30
cmovz eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
add bl, -27 # instrumentation
sets bl
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
movsx edx, dl
sbb edx, -8
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 36 # instrumentation
sub rsi, rsi
lea rcx, qword ptr [rdi + rdi + 3798]
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
lea cx, qword ptr [rbx + rax]
and bl, al
sbb bl, cl
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
