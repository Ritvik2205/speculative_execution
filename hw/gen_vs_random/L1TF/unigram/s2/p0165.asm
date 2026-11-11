.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 73
sbb rax, -1841833326
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
xor al, al
bts si, 30
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
imul rcx
add cl, -33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
bt ax, 205
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
