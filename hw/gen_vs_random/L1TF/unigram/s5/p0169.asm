.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
mul rcx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 81
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
imul al
bswap rsi
and sil, cl
and rsi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and dil, -82
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
add al, 87 # instrumentation
cmovo rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
