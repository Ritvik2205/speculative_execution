.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and bl, 120 # instrumentation
cmovnp cx, si
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
cmovbe si, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
xor al, -19
bts rcx, rdi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and bl, 45 # instrumentation
cmovnb dx, di
cmovno bx, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
test rax, -2052112368
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and dl, 16 # instrumentation
cmovle ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
or ax, -4210
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
