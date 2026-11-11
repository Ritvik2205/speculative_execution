.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
lea ebx, qword ptr [rax]
and bl, 125
add al, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -118
movzx eax, dx
add al, cl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
mov rsi, 100
jmp .bb_0.1
.bb_0.1:
or dl, 56
cmovnbe cx, di
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
xchg ax, si
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
mov ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
