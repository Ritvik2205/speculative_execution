.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
test edi, eax
add cl, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 80
test al, -104
and rbx, -88
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
or cl, sil
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
dec di
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
mov ebx, eax
imul di, dx, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
