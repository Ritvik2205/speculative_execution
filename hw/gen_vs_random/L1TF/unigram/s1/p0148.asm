.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl bx, di
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
xor si, -50
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
imul sil
xor bx, si
xor bx, 21
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
mov al, -101
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 65
lea di, qword ptr [rax + rdx]
lea eax, qword ptr [rdx + rdx + 9]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
