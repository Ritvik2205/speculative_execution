.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovl eax, eax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
not eax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
dec dl
or dl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
or dl, bl
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
cmovbe bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
