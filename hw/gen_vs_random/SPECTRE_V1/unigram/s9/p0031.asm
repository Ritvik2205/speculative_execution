.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rbx]
xor bl, bl
lea ax, qword ptr [rbx + rsi + 78]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
cmovnz bx, si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
neg dl
add bl, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
add al, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
