.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
add bl, -108 # instrumentation
sbb al, 75
cmovo eax, edx
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 86
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rsi
add al, 98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
xor cl, cl
btr rax, 86
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
bts rbx, 140
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
xor bl, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
