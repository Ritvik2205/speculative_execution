.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
lea eax, qword ptr [rbx]
and sil, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
cmovle rax, rcx
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 22 # instrumentation
cmovns rsi, rdx
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
setnp cl
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
test ax, 18607
setnz al
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 42
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
