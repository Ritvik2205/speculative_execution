.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
add cl, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
lea bx, qword ptr [rax + rdi + 42]
sbb cl, 105
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
test dl, -36
adc dl, dil
movzx di, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
setnl al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
