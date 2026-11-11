.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], ax
and cl, 99
lea rsi, qword ptr [rsi + rax]
cmovs bx, ax
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], di
lea rdi, qword ptr [rdx + rsi + 96]
btr rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
xor eax, -603819833
bt edi, esi
or rcx, 2
add dil, 28 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
cmovb edx, edx
lea ax, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
