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
add al, 90 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
cmovnl eax, ebx
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
add al, 110
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
lea si, qword ptr [rsi + rdx]
and rax, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
