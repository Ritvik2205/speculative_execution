.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz cl
test cl, -49
add dx, 83
lea di, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
movsx rdi, dl
dec dl
lea rsi, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
cmovo ecx, ebx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 68
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], 99
lea cx, qword ptr [rdx + rbx + 50]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
