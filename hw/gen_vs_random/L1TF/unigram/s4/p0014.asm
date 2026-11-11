.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
neg al
add al, dl
cmp ecx, 33
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 92
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
mov dl, dl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 87
add cl, -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
