.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, bx
test si, si
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 62
setno dil
setnle dil
or al, dl
and rsi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
mov dil, bl
xor cx, dx
or dil, -113
add al, -34 # instrumentation
setnp dl
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
