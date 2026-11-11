.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
xor cl, al
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
add dl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
sbb dx, si
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
dec dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
