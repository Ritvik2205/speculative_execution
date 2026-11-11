.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmp al, cl
lea eax, qword ptr [rsi + rdi + 31594]
test cl, -49
sbb ax, -206
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
sub rax, -132886581
lea dx, qword ptr [rbx]
dec rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -64
test edx, 1380346728
setnl cl
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
xor bl, bl
mov ax, bx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 44
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmovp ax, di
and bl, -121
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
