.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
xor sil, bl
add dil, bl
bts rdi, 229
cmp al, cl
test cl, -33
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
xor cx, 49
add sil, 2
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
