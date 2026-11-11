.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and edx, 22
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
cmovnbe eax, ecx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
cmovnp rdi, rdi
and bx, 75
lea rax, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
add cl, 35 # instrumentation
sets sil
test bx, cx
cmovo rcx, rcx
lea eax, qword ptr [rsi + rsi]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
movzx rsi, al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
