.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ebx
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
xor rax, 376589024
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 110 # instrumentation
add bl, -22 # instrumentation
cmovnz ebx, ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
neg rcx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
or cl, cl
setno bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
mov rdx, 3189408690989687296
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
