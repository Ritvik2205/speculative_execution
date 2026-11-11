.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and bl, -65
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe rdx, rbx
xor cl, dl
not rbx
mul cl
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 1594154558
add dl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
bts rdi, 19
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
