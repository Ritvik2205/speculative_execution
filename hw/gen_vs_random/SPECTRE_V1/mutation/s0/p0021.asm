.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
cmovno rbx, rcx
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
xor edx, ecx
lea ebx, qword ptr [rdi]
cmp rbx, rcx
movsx ecx, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 111
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
or ax, 18658
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
xor rax, 376589024
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
