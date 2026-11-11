.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -92
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
cwd
setnl dl
add bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and sil, 111
mul bl
xor rax, 29
or ax, -114
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
