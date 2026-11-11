.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea bx, qword ptr [rdx + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 52
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
xchg esi, ebx
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
xor bl, dl
jmp .bb_0.1
.bb_0.1:
cmp dil, 1
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
lea ecx, qword ptr [rsi]
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
