.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
or dl, dl
add dil, 16
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
cmovnz ax, si
xor cl, cl
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdi
and eax, -37
nop
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 47
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
btr ecx, edi
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
cmovnle cx, cx
add rax, 27
cmovs ecx, ebx
cmovo rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
