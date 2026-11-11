.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 8
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
mov cl, bl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 93
cmovle rdx, rax
movzx eax, dl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe edx, ecx
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
add rcx, 28
cmovo ebx, esi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
cmp cl, sil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 24
movsx si, cl
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
