.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
sub al, -66
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb ebx, 71
lea di, qword ptr [rbx + rsi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
sbb dl, dl
sbb bl, al
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
