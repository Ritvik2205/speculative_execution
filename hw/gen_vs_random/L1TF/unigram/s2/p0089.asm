.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
imul rcx
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
imul bx, ax, 75
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
lea rdi, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edx
sbb dx, si
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
