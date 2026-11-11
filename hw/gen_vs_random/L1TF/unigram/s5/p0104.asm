.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 84
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 86
xchg bl, sil
add sil, al
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 85
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
add bl, -121 # instrumentation
movsx si, bl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
adc cx, dx
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rdi + rdi + 46]
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
xchg si, bx
xchg bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
