.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 126 # instrumentation
setnb bl
bt rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
lea rbx, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
setno dl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
lea ax, qword ptr [rax + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and di, si
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and dl, -49
cmovno di, ax
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
add ax, 23614
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
