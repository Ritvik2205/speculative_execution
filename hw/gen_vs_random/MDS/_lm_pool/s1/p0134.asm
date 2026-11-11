.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, si
xor rdx, -59
or dil, dl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
or ax, -23697
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
test cl, dil
test cl, 101
or al, dl
and di, 91
test al, 127
bt di, dx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or al, dil
bt ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
