.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
bts rax, 140
and al, -119
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 83
dec rcx
cbw
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 125 # instrumentation
adc cl, bl
test al, 70
mul rdi
jbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
btr rsi, rdi
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
or dl, 1 # instrumentation
add dl, -47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
add al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
