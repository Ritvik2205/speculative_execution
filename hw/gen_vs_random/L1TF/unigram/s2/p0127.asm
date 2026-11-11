.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
lea cx, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
mov dl, al
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
lea si, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
mov al, -26
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
neg dx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
