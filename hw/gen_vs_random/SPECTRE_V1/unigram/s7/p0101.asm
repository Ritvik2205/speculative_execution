.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
test al, 84
add al, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
add dl, -65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 26
mul cx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
setp dil
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 4
movsx rdi, di
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rax
add dil, 72
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 100
lea ax, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
