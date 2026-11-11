.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
xor dl, 64
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
xor dil, al
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdi + rbx + 42]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
