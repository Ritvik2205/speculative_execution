.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 65
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
dec bx
xchg bl, dl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
lea esi, qword ptr [rax + rax + 86]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
or dil, dil
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add dil, -125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
