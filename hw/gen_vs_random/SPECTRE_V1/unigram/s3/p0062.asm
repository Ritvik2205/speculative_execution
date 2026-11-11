.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, -240917296
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
add dil, 103 # instrumentation
cmovno ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
imul ax, dx, 6
adc rcx, 43
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setb al
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 68
add cl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
add al, 9 # instrumentation
adc al, cl
mov eax, esi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
