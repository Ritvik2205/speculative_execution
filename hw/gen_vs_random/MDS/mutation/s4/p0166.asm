.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 55
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bts rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
cmovnbe edi, edx
test cl, al
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
and dl, 60 # instrumentation
cmovnl esi, edi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
xor al, cl
and bl, 120 # instrumentation
cmovnp cx, si
cmovbe si, ax
xor rax, -843636050
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
