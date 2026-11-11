.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
cmovbe si, ax
xor al, -19
and bl, 120 # instrumentation
cmovnp cx, si
xor rax, -773894210
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
bts rcx, rdi
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
cmovnbe edi, edx
xor al, cl
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and dl, 60 # instrumentation
cmovnl esi, edi
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
test cl, al
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
