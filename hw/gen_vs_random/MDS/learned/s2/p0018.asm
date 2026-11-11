.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 84
xor al, 78
lea rsi, qword ptr [rbx]
or dil, cl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 18
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and bl, -26 # instrumentation
cmovnp rdx, rbx
cmovle ebx, ecx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
nop
test bl, 106
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 10
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 3
and rdi, 40
bt edi, edx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
test rax, 1732677821
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
