.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
sub rax, 1451608022
imul dil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
imul ax, bx
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
setnl dl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add sil, 32 # instrumentation
sbb bl, sil
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mov al, bl
xor dl, al
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
