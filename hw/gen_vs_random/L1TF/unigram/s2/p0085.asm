.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
cmp al, 26
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
add bl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
adc sil, dil
jmp .bb_0.1
.bb_0.1:
add al, 71 # instrumentation
setp cl
setnle dil
add dl, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
cmp cx, 68
neg eax
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
add dl, 100 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
