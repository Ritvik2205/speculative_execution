.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
bt edi, 121
add cl, -51 # instrumentation
cmovl edi, edx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
neg rcx
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
or cl, cl
mov rdx, 3609511260715352814
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
setno bl
add al, 110 # instrumentation
add bl, -22 # instrumentation
cmovnz ebx, ebx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
