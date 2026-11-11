.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
xor dl, al
xor al, dl
cmp dl, -93
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
lea esi, qword ptr [rdx + rdx]
lea ax, qword ptr [rsi + rsi + 31]
add dl, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
cmovnb rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
xor dl, sil
imul bl
add cl, 44 # instrumentation
cmovns dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
