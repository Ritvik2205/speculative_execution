.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and ecx, 19
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
add al, -117 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], esi
mov edi, 2036069402
lea ecx, qword ptr [rdi]
test bx, 16
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
lea ax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
adc di, 80
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
add al, al
imul edx
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
