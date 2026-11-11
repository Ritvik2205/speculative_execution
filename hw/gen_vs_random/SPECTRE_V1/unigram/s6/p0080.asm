.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdx, rcx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 57
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
lea bx, qword ptr [rax + rsi + 8]
movsx rbx, ax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and bl, -43
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
