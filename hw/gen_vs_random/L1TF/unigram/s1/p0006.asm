.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax + rdi + 91]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
mov bl, 35
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 54
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
cmovnb ax, si
add cl, 55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
setnl cl
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
