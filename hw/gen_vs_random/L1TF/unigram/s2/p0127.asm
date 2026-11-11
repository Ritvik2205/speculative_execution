.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
add cl, 100 # instrumentation
lea si, qword ptr [rcx]
and dl, al
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
lea cx, qword ptr [rbx + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 45
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 75
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
add cl, 104 # instrumentation
sbb rcx, 19
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 28
adc al, 80
imul cx, bx, 86
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
