.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
lea ecx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
cmovno esi, edi
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub esi, -120
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
lea si, qword ptr [rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 86
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
lea ecx, qword ptr [rdi + rdx + 33]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
