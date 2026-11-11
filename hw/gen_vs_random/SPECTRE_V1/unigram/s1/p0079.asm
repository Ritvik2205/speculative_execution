.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
movsx esi, dl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
cmovle ax, si
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
imul al
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmp al, dil
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
add bl, -76 # instrumentation
cmovnle di, bx
adc bl, -73
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 15
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
