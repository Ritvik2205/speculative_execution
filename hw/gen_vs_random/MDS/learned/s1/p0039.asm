.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
xor ax, -6793
xor cl, bl
xor dil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor bl, cl
test rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
btr esi, eax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
bt dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
