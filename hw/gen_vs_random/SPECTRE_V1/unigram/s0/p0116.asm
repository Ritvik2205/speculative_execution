.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 98
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 106
cmp al, dl
setnb sil
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rdi + rdx + 75]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
lea di, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 56
lea rcx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 76
mov bl, bl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
