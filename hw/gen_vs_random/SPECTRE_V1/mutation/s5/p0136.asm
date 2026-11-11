.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 78
sbb bl, 79
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
sub rcx, rsi
lea di, qword ptr [rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
or rsi, -119
cmovo rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
