.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
lea si, qword ptr [rcx + rdi + 99]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
sbb ecx, 23
or si, 0b1000000000000000 # instrumentation
bsr cx, si
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
lea rbx, qword ptr [rbx + rdx]
sbb rsi, 45
add rbx, 83
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
