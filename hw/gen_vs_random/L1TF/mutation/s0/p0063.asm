.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
test sil, dil
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdi + rdx]
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
add al, -80
setno cl
lea edx, qword ptr [rdi + rdx]
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
setnl bl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
add bl, bl
add cl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
