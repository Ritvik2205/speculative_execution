.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
add sil, cl
neg dl
xor rcx, 74
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
