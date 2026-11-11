.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 60 # instrumentation
cmovnl esi, edi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovbe si, ax
and bl, 120 # instrumentation
cmovnp cx, si
cmovnbe edi, edx
xor al, cl
xor al, 9
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
bts rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
xor rax, -1657511731
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
test cl, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
