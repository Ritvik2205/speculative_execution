.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
cmp dl, dil
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
mov ax, 98
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdi
bts rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
setp bl
xor sil, 64
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
