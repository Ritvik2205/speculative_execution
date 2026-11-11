.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rax]
not dx
sbb sil, -78
imul rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
add al, 123 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
sub dl, 71
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
add dl, sil
btr rax, rcx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
