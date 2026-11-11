.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
cmovbe rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
test ax, 5320
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
or rdx, rbx
cmovbe bx, bx
bts rdx, 255
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 56
xor si, bx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and bx, di
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
