.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
inc rsi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
add cl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
lea rbx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
inc rsi
and rdi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rax + rbx]
movsx ax, cl
setno dil
adc edi, 7
lea si, qword ptr [rsi + rsi + 49]
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
