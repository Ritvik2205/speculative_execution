.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, cl
mov ecx, -1856082135
not bl
add dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
sbb al, -14
cmovl edx, ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmp dx, 71
add cl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
add al, 80 # instrumentation
sbb dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
