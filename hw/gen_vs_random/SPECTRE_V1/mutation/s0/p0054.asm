.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
add rax, 913062684
add al, -72
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 4
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
mul al
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
test rsi, rax
imul rax, rdi, 109
add bl, -118 # instrumentation
cmovp si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
