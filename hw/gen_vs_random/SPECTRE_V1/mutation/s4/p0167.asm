.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
bt edi, 134
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add cl, -51 # instrumentation
cmovl edi, edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
add al, 110 # instrumentation
add bl, -22 # instrumentation
cmovnz ebx, ebx
mov rdx, 3609511260715352814
or cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
setno bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
neg rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
