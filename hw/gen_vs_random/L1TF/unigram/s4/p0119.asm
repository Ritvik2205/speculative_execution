.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 32
add bl, 10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 26
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
mov edi, ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
cwde
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
setnle dl
cmovno bx, bx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
