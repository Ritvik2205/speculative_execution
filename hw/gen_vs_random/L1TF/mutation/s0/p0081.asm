.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 126 # instrumentation
setnb bl
setno dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
bt rcx, rcx
lea rbx, qword ptr [rcx + rax]
lea ax, qword ptr [rax + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
or al, -5
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
add al, -49 # instrumentation
adc al, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -81
add si, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
