.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
movsx si, dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 87
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
mov dl, dl
add sil, -111
lea bx, qword ptr [rsi + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], dil
bt esi, 88
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 59
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
cmovnb rdi, rdi
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
bts esi, 243
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
