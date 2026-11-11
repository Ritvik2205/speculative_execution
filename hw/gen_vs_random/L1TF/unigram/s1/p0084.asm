.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
btc si, 34
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
xor al, al
sbb dil, dil
setnle sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
imul ax
xchg eax, esi
sbb rdi, 110
lea cx, qword ptr [rax + rcx]
lea cx, qword ptr [rcx + rax + 73]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 26
add al, -21 # instrumentation
mov eax, edx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
