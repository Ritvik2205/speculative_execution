.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
lea rax, qword ptr [rax]
lea bx, qword ptr [rsi + rdx + 39]
btr edx, ebx
bts rcx, rax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
movzx ebx, bx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and sil, dl
sbb di, 80
lea rax, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
cmovnb eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
