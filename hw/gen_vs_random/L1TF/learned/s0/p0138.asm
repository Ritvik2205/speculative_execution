.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
xor al, al
bt ebx, edx
bt ax, 7
and al, bl
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
test dil, 52
cmovno edi, edi
xor eax, -117
movsx rsi, cl
neg edx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
cmovp ebx, ebx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
xor eax, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
