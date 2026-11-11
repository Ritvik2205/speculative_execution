.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, rdi
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovbe si, ax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and bl, 120 # instrumentation
cmovnp cx, si
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
cmovnbe edi, edx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
xor al, cl
test cl, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
xor al, -19
and dl, 60 # instrumentation
cmovnl esi, edi
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
xor rax, -1657511731
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
