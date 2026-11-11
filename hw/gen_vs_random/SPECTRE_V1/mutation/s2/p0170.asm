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
sub rax, 1451608022
lea dx, qword ptr [rbx]
dec rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -26 # instrumentation
adc ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
cmp al, al
and bl, -121
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
