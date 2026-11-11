.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
add di, 82
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
lea rsi, qword ptr [rcx + rax]
mov dl, 82
jmp .bb_0.1
.bb_0.1:
add dx, si
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rbx], di
mov cx, bx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
dec bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
