.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and dil, dil
lea ax, qword ptr [rdx + rax + 62]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
sub dl, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
or dx, 55
lea ebx, qword ptr [rdx + rax]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
