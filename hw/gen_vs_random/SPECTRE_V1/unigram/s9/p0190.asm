.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
xor di, 81
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 99
loop .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 112 # instrumentation
adc al, dl
cmovle ax, cx
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
cmovnz bx, di
sub dil, -111
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
add dl, dl
sbb dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
