.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl si, si
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
add dl, -48 # instrumentation
lea esi, qword ptr [rsi + rcx]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
sub bx, 90
jmp .bb_0.1
.bb_0.1:
and bl, cl
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
or rbx, 98
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 59
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
add dl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], dx
btr bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
