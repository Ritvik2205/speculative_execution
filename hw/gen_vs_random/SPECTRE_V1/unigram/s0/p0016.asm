.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, -77
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ebx
add cl, -23 # instrumentation
cmovl cx, si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb edx, -8
sub al, sil
sbb al, al
bswap rbx
lea di, qword ptr [rcx + rbx]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
add cl, 43 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 31
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
