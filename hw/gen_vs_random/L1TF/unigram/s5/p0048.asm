.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rcx + rsi]
or edx, esi
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
add dl, 85 # instrumentation
cmovp di, di
add esi, -17
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
mul rcx
setno bl
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
lea ebx, qword ptr [rdx + rax + 41]
setnbe al
movsx edi, cl
lea bx, qword ptr [rcx + rdi + 9]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
