.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
or bl, cl
or bl, dl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 54
btr dx, ax
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
lea rsi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
mov rbx, 74
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
dec dl
xor rdi, 31
bt rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
