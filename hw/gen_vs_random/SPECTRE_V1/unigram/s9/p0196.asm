.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 75
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
cmp bl, dl
or ax, ax
add cl, cl
sbb al, bl
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
xchg bl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
xor bx, 47
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
setnl bl
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], si
lea rbx, qword ptr [rbx + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
