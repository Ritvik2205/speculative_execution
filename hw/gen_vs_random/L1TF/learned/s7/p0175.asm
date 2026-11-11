.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 74
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
xor bl, 38
sub cl, 86
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 74
not bl
or al, -57
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
