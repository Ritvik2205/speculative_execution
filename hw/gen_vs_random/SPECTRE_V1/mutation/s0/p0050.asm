.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
add bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
setnl dl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
cwd
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and dl, -109
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor rax, 376589024
and sil, 52
mul bl
or ax, 18658
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
