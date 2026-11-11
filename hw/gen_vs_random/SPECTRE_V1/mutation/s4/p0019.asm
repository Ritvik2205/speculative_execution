.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ecx, -45
add cl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
cwd
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -4
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -26 # instrumentation
adc ecx, edx
cmp al, al
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
and bl, -121
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
