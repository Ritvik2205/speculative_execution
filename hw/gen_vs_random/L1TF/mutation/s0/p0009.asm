.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
bt rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
lea rbx, qword ptr [rcx + rax]
add dl, 126 # instrumentation
setnb bl
lea ax, qword ptr [rax + rsi]
setno dl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
add si, -5
or al, -57
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
add al, -49 # instrumentation
adc al, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -81
lea edi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
