.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, al
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 45
setnl cl
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
or ax, 10
mov rdi, -5671708760962025403
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -20
add bl, 59 # instrumentation
cmovns ecx, ebx
movzx rax, cl
lea si, qword ptr [rdx + rcx + 51]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 18
dec dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
adc al, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
