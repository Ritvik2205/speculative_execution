.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
bts rbx, 140
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
dec dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovnp dx, cx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 28 # instrumentation
setnz al
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
dec dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xor cx, di
sub bl, cl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
