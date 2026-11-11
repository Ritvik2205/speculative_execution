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
lock btr qword ptr [r14 + rcx], 6
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
xor al, -19
bts rcx, rdi
bts edx, 189
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
btc bx, 104
xor al, 9
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
xor rax, 459999114
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
