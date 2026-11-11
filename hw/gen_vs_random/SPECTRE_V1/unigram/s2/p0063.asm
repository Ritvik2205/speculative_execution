.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdx, 93
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
movsx rdx, al
or dl, 46
lea dx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add cl, 97 # instrumentation
adc dx, bx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
mul di
or sil, dil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 9
dec ecx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
sbb ax, -206
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
