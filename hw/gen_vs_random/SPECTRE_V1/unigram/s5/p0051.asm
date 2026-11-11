.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
cmovno bx, bx
or rax, -3
adc rcx, 43
movsx ecx, dl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
setnp al
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
