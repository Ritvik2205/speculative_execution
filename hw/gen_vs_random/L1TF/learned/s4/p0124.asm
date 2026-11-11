.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 32579
and rsi, 98
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
sub al, bl
add dl, cl
setnb cl
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
lea edx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
mov rsi, 8
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
xor ax, -27503
mov al, -102
setno al
not esi
cmovnbe rbx, rax
test dil, 40
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
xor ax, -27503
test dl, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
